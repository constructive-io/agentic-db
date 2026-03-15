-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/list_items/policies/enable_row_level_security
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/list_items/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/lists/columns/embedding/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".list_items 
  ENABLE ROW LEVEL SECURITY;

