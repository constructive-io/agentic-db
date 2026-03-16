-- Deploy: schemas/agent_db_auth_private/tables/session_credentials/columns/name/alterations/alt0000001496
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_auth_private/schema
-- requires: schemas/agent_db_auth_private/tables/session_credentials/columns/name/column


COMMENT ON COLUMN "agent_db_auth_private".session_credentials.name IS E'User-provided display name for this credential (e.g. My CI Key)';

