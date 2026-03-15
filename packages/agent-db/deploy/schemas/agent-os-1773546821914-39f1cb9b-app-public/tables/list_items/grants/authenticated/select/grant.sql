-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/list_items/grants/authenticated/select/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/list_items/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/lists/columns/embedding/column


GRANT SELECT ON "agent-os-1773546821914-39f1cb9b-app-public".list_items TO authenticated;

