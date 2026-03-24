-- Deploy: schemas/agentic_db_auth_private/procedures/authenticate_strict/procedure
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_auth_private/schema
-- requires: schemas/agentic_db_auth_private/tables/sessions/table
-- requires: schemas/agentic_db_auth_private/tables/session_credentials/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_auth_private/tables/sessions/columns/origin/column
-- requires: schemas/agentic_db_auth_private/tables/sessions/columns/uagent/column
-- requires: schemas/agentic_db_auth_private/tables/sessions/columns/user_id/column
-- requires: schemas/agentic_db_auth_private/tables/session_credentials/columns/expires_at/column
-- requires: schemas/agentic_db_auth_private/tables/session_credentials/columns/session_id/column
-- requires: schemas/agentic_db_auth_private/tables/session_credentials/columns/secret_hash/column



CREATE FUNCTION agentic_db_auth_private.authenticate_strict (token_str text)
    RETURNS TABLE (
        id uuid,
        user_id uuid
    )
AS $$
SELECT
    cred.id,
    sess.user_id
FROM
    agentic_db_auth_private.session_credentials AS cred
    JOIN agentic_db_auth_private.sessions AS sess ON sess.id = cred.session_id
WHERE
    cred.secret_hash = digest(authenticate_strict.token_str, 'sha256')
    AND EXTRACT(EPOCH FROM (cred.expires_at - NOW())) > 0
    AND cred.revoked_at IS NULL
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
    );
$$
LANGUAGE 'sql' STABLE
SECURITY DEFINER;
GRANT EXECUTE ON FUNCTION agentic_db_auth_private.authenticate_strict TO anonymous;
GRANT EXECUTE ON FUNCTION agentic_db_auth_private.authenticate_strict TO authenticated;

