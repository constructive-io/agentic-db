-- Deploy: schemas/agentic_db_auth_public/procedures/one_time_token/procedure
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_auth_public/schema



CREATE FUNCTION "agentic_db_auth_public".one_time_token (
  email text,
  password text,
  origin origin, -- this is for setting which origin to receive!
  remember_me boolean DEFAULT FALSE
)
  RETURNS text
  AS $$
DECLARE
  v_credential_id uuid;
  v_session_id uuid;
  v_ot_token text;
BEGIN
  SELECT si.id FROM "agentic_db_auth_public".sign_in(
    email, password, remember_me
  ) AS si INTO v_credential_id;
  IF (v_credential_id IS NULL) THEN 
    RETURN NULL;
  END IF;
  SELECT c.session_id FROM "agentic_db_auth_private".session_credentials c
    WHERE c.id = v_credential_id
  INTO v_session_id;
  v_ot_token := encode(gen_random_bytes(32), 'hex');
  UPDATE "agentic_db_auth_private".session_credentials c
    SET 
      ot_token = v_ot_token
  WHERE c.id = v_credential_id;
  UPDATE "agentic_db_auth_private".sessions s
    SET 
      origin = one_time_token.origin
  WHERE s.id = v_session_id;
  RETURN lower(replace(base32.encode(v_ot_token), '=', ''));
END;
$$
LANGUAGE 'plpgsql'
SECURITY DEFINER;
GRANT EXECUTE ON FUNCTION "agentic_db_auth_public".one_time_token TO anonymous;

