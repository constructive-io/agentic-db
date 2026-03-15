-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/list_items/columns/is_checked/alterations/alt0000003094
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/list_items/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/list_items/columns/position/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/list_items/columns/is_checked/column



ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".list_items 
    ALTER COLUMN is_checked SET DEFAULT false;

