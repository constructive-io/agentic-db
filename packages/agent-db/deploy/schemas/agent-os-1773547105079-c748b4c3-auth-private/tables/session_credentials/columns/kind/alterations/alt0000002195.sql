-- Deploy: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/session_credentials/columns/kind/alterations/alt0000002195
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-auth-private/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/session_credentials/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/session_credentials/columns/kind/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-auth-private".session_credentials 
  ALTER COLUMN kind SET NOT NULL;

