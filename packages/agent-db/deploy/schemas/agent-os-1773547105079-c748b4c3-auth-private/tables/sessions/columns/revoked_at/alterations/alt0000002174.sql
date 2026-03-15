-- Deploy: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/sessions/columns/revoked_at/alterations/alt0000002174
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-auth-private/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/sessions/columns/revoked_at/column


COMMENT ON COLUMN "agent-os-1773547105079-c748b4c3-auth-private".sessions.revoked_at IS E'When this session was explicitly revoked (soft delete); NULL means active';

