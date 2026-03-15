-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-auth-private/tables/sessions/columns/revoked_at/alterations/alt0000000613
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-auth-private/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-auth-private/tables/sessions/columns/revoked_at/column


COMMENT ON COLUMN "agent-os-1773546821914-39f1cb9b-auth-private".sessions.revoked_at IS E'When this session was explicitly revoked (soft delete); NULL means active';

