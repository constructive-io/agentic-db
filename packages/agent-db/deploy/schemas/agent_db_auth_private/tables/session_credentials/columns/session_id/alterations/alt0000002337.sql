-- Deploy: schemas/agent_db_auth_private/tables/session_credentials/columns/session_id/alterations/alt0000002337
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_auth_private/schema
-- requires: schemas/agent_db_auth_private/tables/session_credentials/columns/session_id/column


COMMENT ON COLUMN "agent_db_auth_private".session_credentials.session_id IS 'References the session this credential authenticates';

