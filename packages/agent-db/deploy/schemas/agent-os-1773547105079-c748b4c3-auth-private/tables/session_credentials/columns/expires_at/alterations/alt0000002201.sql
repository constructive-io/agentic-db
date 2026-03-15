-- Deploy: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/session_credentials/columns/expires_at/alterations/alt0000002201
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-auth-private/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/session_credentials/columns/expires_at/column


COMMENT ON COLUMN "agent-os-1773547105079-c748b4c3-auth-private".session_credentials.expires_at IS E'When this credential expires (can differ from the parent session expiration)';

