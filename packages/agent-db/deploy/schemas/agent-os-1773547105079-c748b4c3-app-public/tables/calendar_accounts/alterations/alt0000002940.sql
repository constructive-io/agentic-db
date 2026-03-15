-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/calendar_accounts/alterations/alt0000002940
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/calendar_accounts/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/messages/columns/embedding/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".calendar_accounts 
  DISABLE ROW LEVEL SECURITY;

