-- Deploy: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/sessions/alterations/alt0000002163
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-auth-private/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/sessions/table


ALTER TABLE "agent-os-1773547105079-c748b4c3-auth-private".sessions 
  DISABLE ROW LEVEL SECURITY;

