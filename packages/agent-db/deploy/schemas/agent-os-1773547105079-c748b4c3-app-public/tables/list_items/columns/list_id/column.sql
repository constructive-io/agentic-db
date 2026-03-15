-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/list_items/columns/list_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/list_items/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/list_items/columns/updated_at/alterations/alt0000003092


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".list_items 
  ADD COLUMN list_id uuid;

