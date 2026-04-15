-- Deploy: schemas/agentic_db_auth_public/procedures/extend_token_expires/procedure
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_auth_public/schema
-- requires: schemas/agentic_db_auth_private/tables/sessions/table
-- requires: schemas/agentic_db_auth_private/tables/session_credentials/table


CREATE FUNCTION agentic_db_auth_public.extend_token_expires(
  IN amount interval DEFAULT '30 minutes'::interval
) RETURNS TABLE (
  id uuid,
  session_id uuid,
  expires_at timestamptz
) AS $_PGFN_$
DECLARE
  v_token_id uuid;
  v_session_id uuid;
  v_credential agentic_db_auth_private.session_credentials;
  v_session agentic_db_auth_private.sessions;
BEGIN
  v_token_id := jwt_private.current_token_id();
  v_session_id := jwt_private.current_session_id();
  IF v_token_id IS NULL THEN
    RETURN;
  END IF;
  SELECT cred.*
  FROM agentic_db_auth_private.session_credentials AS cred
  WHERE
    (cred.id = v_token_id AND cred.revoked_at IS NULL) AND (cred.expires_at IS NULL OR EXTRACT(EPOCH FROM cred.expires_at - now()) > 0) INTO v_credential;
  IF NOT (FOUND) THEN
    RETURN;
  END IF;
  SELECT sess.*
  FROM agentic_db_auth_private.sessions AS sess
  WHERE
    (((sess.id = v_credential.session_id AND sess.revoked_at IS NULL) AND EXTRACT(EPOCH FROM sess.expires_at - now()) > 0) AND CASE sess.uagent IS NULL 
        WHEN true THEN jwt_public.current_user_agent() IS NULL 
        ELSE sess.uagent = jwt_public.current_user_agent() 
      END) AND CASE sess.origin IS NULL 
        WHEN true THEN jwt_public.current_origin() IS NULL 
        ELSE sess.origin = jwt_public.current_origin() 
      END INTO v_session;
  IF NOT (FOUND) THEN
    RETURN;
  END IF;
  UPDATE agentic_db_auth_private.session_credentials AS c SET
  expires_at = (COALESCE(c.expires_at, now())) + extend_token_expires.amount
  WHERE
    c.id = v_credential.id
  RETURNING c.id, c.session_id, c.expires_at INTO id, session_id, expires_at;
  RETURN NEXT;
END;
$_PGFN_$ LANGUAGE plpgsql STRICT SECURITY DEFINER;

