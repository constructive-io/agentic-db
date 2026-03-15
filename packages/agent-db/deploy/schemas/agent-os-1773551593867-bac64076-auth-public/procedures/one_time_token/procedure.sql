-- Deploy: schemas/agent-os-1773551593867-bac64076-auth-public/procedures/one_time_token/procedure
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-auth-public/schema



CREATE FUNCTION "agent-os-1773551593867-bac64076-auth-public".one_time_token (
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
  SELECT si.id FROM "agent-os-1773551593867-bac64076-auth-public".sign_in(
    email, password, remember_me
  ) AS si INTO v_credential_id;
  IF (v_credential_id IS NULL) THEN 
    RETURN NULL;
  END IF;
  SELECT c.session_id FROM "agent-os-1773551593867-bac64076-auth-private".session_credentials c
    WHERE c.id = v_credential_id
  INTO v_session_id;
  v_ot_token := encode(gen_random_bytes(32), 'hex');
  UPDATE "agent-os-1773551593867-bac64076-auth-private".session_credentials c
    SET 
      ot_token = v_ot_token
  WHERE c.id = v_credential_id;
  UPDATE "agent-os-1773551593867-bac64076-auth-private".sessions s
    SET 
      origin = one_time_token.origin
  WHERE s.id = v_session_id;
  RETURN lower(replace(base32.encode(v_ot_token), '=', ''));
END;
$$
LANGUAGE 'plpgsql'
SECURITY DEFINER;
GRANT EXECUTE ON FUNCTION "agent-os-1773551593867-bac64076-auth-public".one_time_token TO anonymous;

