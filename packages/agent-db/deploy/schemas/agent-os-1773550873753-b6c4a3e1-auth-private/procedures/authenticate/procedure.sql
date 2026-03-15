-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-auth-private/procedures/authenticate/procedure
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-auth-private/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-auth-private/tables/sessions/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-auth-private/tables/session_credentials/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-auth-private/tables/sessions/columns/user_id/column
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-auth-private/tables/session_credentials/columns/expires_at/column
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-auth-private/tables/session_credentials/columns/session_id/column
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-auth-private/tables/session_credentials/columns/secret_hash/column



CREATE FUNCTION "agent-os-1773550873753-b6c4a3e1-auth-private".authenticate (token_str text)
    RETURNS TABLE (
        id uuid,
        user_id uuid
    )
AS $$
SELECT
    cred.id,
    sess.user_id
FROM
    "agent-os-1773550873753-b6c4a3e1-auth-private".session_credentials AS cred
    JOIN "agent-os-1773550873753-b6c4a3e1-auth-private".sessions AS sess ON sess.id = cred.session_id
WHERE
    cred.secret_hash = digest(authenticate.token_str, 'sha256')
    AND EXTRACT(EPOCH FROM (cred.expires_at - NOW())) > 0
    AND cred.revoked_at IS NULL
    AND sess.revoked_at IS NULL
    AND EXTRACT(EPOCH FROM (sess.expires_at - NOW())) > 0;
$$
LANGUAGE 'sql' STABLE
SECURITY DEFINER;
GRANT EXECUTE ON FUNCTION "agent-os-1773550873753-b6c4a3e1-auth-private".authenticate TO anonymous;
GRANT EXECUTE ON FUNCTION "agent-os-1773550873753-b6c4a3e1-auth-private".authenticate TO authenticated;

