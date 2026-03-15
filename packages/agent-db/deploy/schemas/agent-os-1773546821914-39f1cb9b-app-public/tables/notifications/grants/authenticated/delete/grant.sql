-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/notifications/grants/authenticated/delete/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/notifications/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/list_items/columns/ref_type/column


GRANT DELETE ON "agent-os-1773546821914-39f1cb9b-app-public".notifications TO authenticated;

