-- Deploy: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/session_credentials/indexes/session_credentials_updated_at_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-auth-private/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/session_credentials/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/session_credentials/columns/updated_at/column


CREATE INDEX session_credentials_updated_at_idx ON "agent-os-1773547105079-c748b4c3-auth-private".session_credentials ( updated_at );

