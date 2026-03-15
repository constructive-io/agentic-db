-- Deploy: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/session_credentials/alterations/alt0000002189
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-auth-private/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/session_credentials/table


ALTER TABLE "agent-os-1773547105079-c748b4c3-auth-private".session_credentials 
  DISABLE ROW LEVEL SECURITY;

