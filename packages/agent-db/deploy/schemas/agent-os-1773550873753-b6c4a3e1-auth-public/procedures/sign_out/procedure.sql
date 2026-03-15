-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-auth-public/procedures/sign_out/procedure
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-auth-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-auth-private/tables/sessions/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-auth-private/tables/session_credentials/table



CREATE FUNCTION "agent-os-1773550873753-b6c4a3e1-auth-public".sign_out ()
  RETURNS void
  AS $$
DECLARE
  v_session_id uuid = jwt_private.current_session_id();
BEGIN
  IF (v_session_id IS NOT NULL) THEN 
    UPDATE "agent-os-1773550873753-b6c4a3e1-auth-private".session_credentials cred
      SET revoked_at = NOW()
      WHERE cred.session_id = v_session_id
        AND cred.revoked_at IS NULL;
    UPDATE "agent-os-1773550873753-b6c4a3e1-auth-private".sessions s
      SET revoked_at = NOW()
      WHERE s.id = v_session_id
        AND s.revoked_at IS NULL;
  END IF;
END;
$$
LANGUAGE plpgsql
VOLATILE
SECURITY DEFINER;
GRANT EXECUTE ON FUNCTION "agent-os-1773550873753-b6c4a3e1-auth-public".sign_out TO authenticated;

