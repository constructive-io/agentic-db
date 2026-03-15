-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/list_items/columns/is_checked/alterations/alt0000001533
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/list_items/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/list_items/columns/position/column
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/list_items/columns/is_checked/column



ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".list_items 
    ALTER COLUMN is_checked SET DEFAULT false;

