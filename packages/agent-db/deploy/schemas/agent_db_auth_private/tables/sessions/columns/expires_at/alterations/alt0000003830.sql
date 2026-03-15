-- Deploy: schemas/agent_db_auth_private/tables/sessions/columns/expires_at/alterations/alt0000003830
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_auth_private/schema
-- requires: schemas/agent_db_auth_private/tables/sessions/columns/expires_at/column


COMMENT ON COLUMN "agent_db_auth_private".sessions.expires_at IS 'When this session expires and can no longer be used for authentication';

