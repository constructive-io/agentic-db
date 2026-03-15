-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/list_items/columns/content/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/list_items/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/list_items/columns/list_id/alterations/alt0000001532


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".list_items 
  ADD COLUMN content text;

