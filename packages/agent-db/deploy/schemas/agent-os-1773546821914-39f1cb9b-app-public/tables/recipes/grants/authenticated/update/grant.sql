-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/recipes/grants/authenticated/update/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/recipes/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/notifications/columns/source_entity_type/column


GRANT UPDATE ON "agent-os-1773546821914-39f1cb9b-app-public".recipes TO authenticated;

