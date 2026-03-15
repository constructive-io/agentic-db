-- Deploy: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/session_credentials/columns/revoked_at/alterations/alt0000002202
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-auth-private/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/session_credentials/columns/revoked_at/column


COMMENT ON COLUMN "agent-os-1773547105079-c748b4c3-auth-private".session_credentials.revoked_at IS E'When this credential was explicitly revoked; NULL means active';

