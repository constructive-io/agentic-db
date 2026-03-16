-- Deploy: schemas/agentic_db_auth_private/tables/sessions/columns/expires_at/alterations/alt0000000612
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_auth_private/schema
-- requires: schemas/agentic_db_auth_private/tables/sessions/columns/expires_at/column


COMMENT ON COLUMN "agentic_db_auth_private".sessions.expires_at IS 'When this session expires and can no longer be used for authentication';

