-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/list_items/grants/authenticated/insert/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/list_items/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/lists/columns/embedding/column


GRANT INSERT ON "agent-os-1773551593867-bac64076-app-public".list_items TO authenticated;

