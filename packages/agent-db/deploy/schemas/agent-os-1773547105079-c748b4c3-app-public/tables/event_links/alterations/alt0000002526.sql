-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/event_links/alterations/alt0000002526
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/event_links/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/company_links/columns/embedding/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".event_links 
  DISABLE ROW LEVEL SECURITY;

