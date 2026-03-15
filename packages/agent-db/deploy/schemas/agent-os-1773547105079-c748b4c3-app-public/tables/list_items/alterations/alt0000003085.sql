-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/list_items/alterations/alt0000003085
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/list_items/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/lists/columns/embedding/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".list_items 
  DISABLE ROW LEVEL SECURITY;

