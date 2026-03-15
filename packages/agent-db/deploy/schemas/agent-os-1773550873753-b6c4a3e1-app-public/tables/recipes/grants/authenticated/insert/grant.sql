-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/recipes/grants/authenticated/insert/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/recipes/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/notifications/columns/source_entity_type/column


GRANT INSERT ON "agent-os-1773550873753-b6c4a3e1-app-public".recipes TO authenticated;

