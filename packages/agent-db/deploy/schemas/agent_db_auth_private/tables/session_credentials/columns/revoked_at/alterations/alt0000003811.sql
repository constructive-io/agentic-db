-- Deploy: schemas/agent_db_auth_private/tables/session_credentials/columns/revoked_at/alterations/alt0000003811
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_auth_private/schema
-- requires: schemas/agent_db_auth_private/tables/session_credentials/columns/revoked_at/column


COMMENT ON COLUMN "agent_db_auth_private".session_credentials.revoked_at IS E'When this credential was explicitly revoked; NULL means active';

