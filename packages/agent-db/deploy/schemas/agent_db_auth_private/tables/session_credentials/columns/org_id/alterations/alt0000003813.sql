-- Deploy: schemas/agent_db_auth_private/tables/session_credentials/columns/org_id/alterations/alt0000003813
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_auth_private/schema
-- requires: schemas/agent_db_auth_private/tables/session_credentials/columns/org_id/column


COMMENT ON COLUMN "agent_db_auth_private".session_credentials.org_id IS E'Scopes this API key to a specific organization; NULL means app-level';

