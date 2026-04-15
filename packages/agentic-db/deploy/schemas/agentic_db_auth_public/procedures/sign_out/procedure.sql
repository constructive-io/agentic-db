-- Deploy: schemas/agentic_db_auth_public/procedures/sign_out/procedure
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_auth_public/schema
-- requires: schemas/agentic_db_auth_private/tables/sessions/table
-- requires: schemas/agentic_db_auth_private/tables/session_credentials/table


CREATE FUNCTION agentic_db_auth_public.sign_out() RETURNS void AS $_PGFN_$
DECLARE
  v_session_id uuid;
BEGIN
  v_session_id := jwt_private.current_session_id();
  IF v_session_id IS NOT NULL THEN
    UPDATE agentic_db_auth_private.session_credentials AS cred SET
    revoked_at = now()
    WHERE
      cred.session_id = v_session_id AND cred.revoked_at IS NULL;
    UPDATE agentic_db_auth_private.sessions AS s SET
    revoked_at = now()
    WHERE
      s.id = v_session_id AND s.revoked_at IS NULL;
  END IF;
END;
$_PGFN_$ LANGUAGE plpgsql VOLATILE SECURITY DEFINER;

