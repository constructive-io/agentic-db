-- Deploy: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/session_credentials/columns/kind/alterations/alt0000002197
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-auth-private/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/session_credentials/columns/kind/column


COMMENT ON COLUMN "agent-os-1773547105079-c748b4c3-auth-private".session_credentials.kind IS E'Credential type: bearer (JWT), cookie, api_key, or magic_link';

