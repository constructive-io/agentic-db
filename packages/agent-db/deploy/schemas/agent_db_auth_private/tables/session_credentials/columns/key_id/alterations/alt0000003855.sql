-- Deploy: schemas/agent_db_auth_private/tables/session_credentials/columns/key_id/alterations/alt0000003855
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_auth_private/schema
-- requires: schemas/agent_db_auth_private/tables/session_credentials/columns/key_id/column


COMMENT ON COLUMN "agent_db_auth_private".session_credentials.key_id IS E'Public prefix for API keys (e.g. sk_live_abc123), used for identification without exposing the secret';

