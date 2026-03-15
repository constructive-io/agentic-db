-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/list_items/columns/list_id/alterations/alt0000001532
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/list_items/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/list_items/columns/list_id/column
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/list_items/columns/updated_at/alterations/alt0000001531


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".list_items 
  ALTER COLUMN list_id SET NOT NULL;

