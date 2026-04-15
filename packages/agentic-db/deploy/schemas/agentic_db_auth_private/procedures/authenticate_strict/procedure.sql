-- Deploy: schemas/agentic_db_auth_private/procedures/authenticate_strict/procedure
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_auth_private/schema
-- requires: schemas/agentic_db_auth_private/tables/sessions/table
-- requires: schemas/agentic_db_auth_private/tables/session_credentials/table


CREATE FUNCTION agentic_db_auth_private.authenticate_strict(
  IN token_str text
) RETURNS TABLE (
  id uuid,
  user_id uuid
) AS $_PGFN_$
SELECT
  cred.id,
  sess.user_id
FROM agentic_db_auth_private.session_credentials AS cred INNER JOIN agentic_db_auth_private.sessions AS sess ON sess.id = cred.session_id
WHERE
  (((((cred.secret_hash = digest(authenticate_strict.token_str, 'sha256') AND EXTRACT(EPOCH FROM cred.expires_at - now()) > 0) AND cred.revoked_at IS NULL) AND sess.revoked_at IS NULL) AND EXTRACT(EPOCH FROM sess.expires_at - now()) > 0) AND CASE 
      WHEN sess.uagent IS NULL THEN jwt_public.current_user_agent() IS NULL 
      ELSE sess.uagent = jwt_public.current_user_agent() 
    END) AND CASE 
      WHEN sess.origin IS NULL THEN jwt_public.current_origin() IS NULL 
      ELSE sess.origin = jwt_public.current_origin() 
    END;
$_PGFN_$ LANGUAGE sql STABLE SECURITY DEFINER;

