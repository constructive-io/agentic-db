-- Deploy: schemas/agentic_db_auth_private/tables/session_credentials/columns/session_id/alterations/alt0000001801
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_auth_private/schema
-- requires: schemas/agentic_db_auth_private/tables/session_credentials/columns/session_id/column


COMMENT ON COLUMN agentic_db_auth_private.session_credentials.session_id IS 'References the session this credential authenticates';

