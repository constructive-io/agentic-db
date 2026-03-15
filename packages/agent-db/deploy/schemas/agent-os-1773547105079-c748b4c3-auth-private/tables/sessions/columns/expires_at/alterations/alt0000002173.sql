-- Deploy: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/sessions/columns/expires_at/alterations/alt0000002173
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-auth-private/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/sessions/columns/expires_at/column


COMMENT ON COLUMN "agent-os-1773547105079-c748b4c3-auth-private".sessions.expires_at IS 'When this session expires and can no longer be used for authentication';

