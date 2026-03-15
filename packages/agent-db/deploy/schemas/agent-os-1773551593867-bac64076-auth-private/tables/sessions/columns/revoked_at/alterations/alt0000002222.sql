-- Deploy: schemas/agent-os-1773551593867-bac64076-auth-private/tables/sessions/columns/revoked_at/alterations/alt0000002222
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-auth-private/schema
-- requires: schemas/agent-os-1773551593867-bac64076-auth-private/tables/sessions/columns/revoked_at/column


COMMENT ON COLUMN "agent-os-1773551593867-bac64076-auth-private".sessions.revoked_at IS E'When this session was explicitly revoked (soft delete); NULL means active';

