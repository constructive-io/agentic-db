-- Deploy: schemas/agent_db_auth_private/tables/session_credentials/columns/expires_at/alterations/alt0000002344
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_auth_private/schema
-- requires: schemas/agent_db_auth_private/tables/session_credentials/columns/expires_at/column


COMMENT ON COLUMN "agent_db_auth_private".session_credentials.expires_at IS E'When this credential expires (can differ from the parent session expiration)';

