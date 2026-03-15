-- Deploy: schemas/agent_db_auth_public/procedures/extend_token_expires/procedure
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_auth_public/schema
-- requires: schemas/agent_db_auth_private/tables/sessions/table
-- requires: schemas/agent_db_auth_private/tables/session_credentials/table



CREATE FUNCTION agent_db_auth_public.extend_token_expires (
  amount interval default '30 minutes'::interval
)
  RETURNS TABLE (
    id uuid,
    session_id uuid,
    expires_at timestamptz
  )
  AS $$
DECLARE
  v_token_id uuid = jwt_private.current_token_id();
  v_session_id uuid = jwt_private.current_session_id();
  v_credential agent_db_auth_private.session_credentials;
  v_session agent_db_auth_private.sessions;
BEGIN
    IF (v_token_id IS NULL) THEN 
      RETURN;
    END IF;
    SELECT cred.* FROM agent_db_auth_private.session_credentials cred
    WHERE cred.id = v_token_id
      AND cred.revoked_at IS NULL
      AND (cred.expires_at IS NULL OR EXTRACT(EPOCH FROM (cred.expires_at - NOW())) > 0)
    INTO v_credential;
    IF (NOT FOUND) THEN 
      RETURN;
    END IF;
    SELECT sess.* FROM agent_db_auth_private.sessions sess
    WHERE sess.id = v_credential.session_id
      AND sess.revoked_at IS NULL
      AND EXTRACT(EPOCH FROM (sess.expires_at - NOW())) > 0
      AND 
        (
            CASE WHEN sess.uagent IS NULL THEN jwt_public.current_user_agent() IS NULL
            ELSE sess.uagent = jwt_public.current_user_agent() END
        )
      AND 
        (
            CASE WHEN sess.origin IS NULL THEN jwt_public.current_origin() IS NULL
            ELSE sess.origin = jwt_public.current_origin() END
        )
    INTO v_session;
    IF (NOT FOUND) THEN 
      RETURN;
    END IF;
    UPDATE agent_db_auth_private.session_credentials c
    SET 
      expires_at = COALESCE(c.expires_at, NOW()) + amount
      WHERE c.id = v_credential.id
    RETURNING c.id, c.session_id, c.expires_at INTO id, session_id, expires_at;
    RETURN NEXT;
END;
$$
LANGUAGE 'plpgsql'
STRICT
SECURITY DEFINER;
GRANT EXECUTE ON FUNCTION agent_db_auth_public.extend_token_expires TO authenticated;

