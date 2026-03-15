-- Deploy: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/session_credentials/columns/session_id/alterations/alt0000002193
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-auth-private/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/session_credentials/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/session_credentials/columns/session_id/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-auth-private".session_credentials 
  ALTER COLUMN session_id SET NOT NULL;

