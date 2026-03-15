-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/list_items/columns/id/alterations/alt0000003134
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/list_items/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/list_items/columns/id/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/lists/columns/embedding/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".list_items 
  ALTER COLUMN id SET NOT NULL;

