-- Deploy: schemas/agentic_db_auth_private/tables/sessions/columns/revoked_at/alterations/alt0000001781
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_auth_private/schema
-- requires: schemas/agentic_db_auth_private/tables/sessions/columns/revoked_at/column


COMMENT ON COLUMN agentic_db_auth_private.sessions.revoked_at IS E'When this session was explicitly revoked (soft delete); NULL means active';

