-- Deploy: schemas/agent_db_auth_private/tables/session_credentials/columns/ot_token/alterations/alt0000003863
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_auth_private/schema
-- requires: schemas/agent_db_auth_private/tables/session_credentials/columns/ot_token/column


COMMENT ON COLUMN "agent_db_auth_private".session_credentials.ot_token IS E'One-time token for magic link or passwordless authentication flows';

