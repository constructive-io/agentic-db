-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/list_items/grants/authenticated/select/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/list_items/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/lists/columns/embedding/column


GRANT SELECT ON "agent-os-1773550873753-b6c4a3e1-app-public".list_items TO authenticated;

