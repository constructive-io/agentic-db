-- Deploy: schemas/agentic_db_auth_public/procedures/sign_out/procedure
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_auth_public/schema
-- requires: schemas/agentic_db_auth_private/tables/sessions/table
-- requires: schemas/agentic_db_auth_private/tables/session_credentials/table



CREATE FUNCTION "agentic_db_auth_public".sign_out ()
  RETURNS void
  AS $$
DECLARE
  v_session_id uuid = jwt_private.current_session_id();
BEGIN
  IF (v_session_id IS NOT NULL) THEN 
    UPDATE "agentic_db_auth_private".session_credentials cred
      SET revoked_at = NOW()
      WHERE cred.session_id = v_session_id
        AND cred.revoked_at IS NULL;
    UPDATE "agentic_db_auth_private".sessions s
      SET revoked_at = NOW()
      WHERE s.id = v_session_id
        AND s.revoked_at IS NULL;
  END IF;
END;
$$
LANGUAGE plpgsql
VOLATILE
SECURITY DEFINER;
GRANT EXECUTE ON FUNCTION "agentic_db_auth_public".sign_out TO authenticated;

