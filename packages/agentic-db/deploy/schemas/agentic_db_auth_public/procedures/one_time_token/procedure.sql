-- Deploy: schemas/agentic_db_auth_public/procedures/one_time_token/procedure
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_encrypted/schema
-- requires: schemas/agentic_db_auth_public/schema
-- requires: schemas/agentic_db_simple_secrets/schema
-- requires: schemas/agentic_db_auth_private/tables/sessions/table
-- requires: schemas/agentic_db_user_identifiers_public/tables/emails/table
-- requires: schemas/agentic_db_auth_private/tables/session_credentials/table


CREATE FUNCTION agentic_db_auth_public.one_time_token(
  IN email text,
  IN password text,
  IN origin origin,
  IN remember_me boolean DEFAULT false
) RETURNS text AS $_PGFN_$
DECLARE
  v_credential_id uuid;
  v_session_id uuid;
  v_ot_token text;
BEGIN
  SELECT si.id
  FROM agentic_db_auth_public.sign_in(one_time_token.email, one_time_token.password, one_time_token.remember_me) AS si INTO v_credential_id;
  IF v_credential_id IS NULL THEN
    RETURN NULL;
  END IF;
  SELECT c.session_id
  FROM agentic_db_auth_private.session_credentials AS c
  WHERE
    c.id = v_credential_id INTO v_session_id;
  SELECT encode(gen_random_bytes(32), 'hex') INTO v_ot_token;
  UPDATE agentic_db_auth_private.session_credentials AS c SET
  ot_token = v_ot_token
  WHERE
    c.id = v_credential_id;
  UPDATE agentic_db_auth_private.sessions AS s SET
  origin = one_time_token.origin
  WHERE
    s.id = v_session_id;
  RETURN lower(replace(base32.encode(v_ot_token), '=', ''));
END;
$_PGFN_$ LANGUAGE plpgsql VOLATILE SECURITY DEFINER;

