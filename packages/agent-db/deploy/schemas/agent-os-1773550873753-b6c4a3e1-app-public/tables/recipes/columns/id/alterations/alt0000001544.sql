-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/recipes/columns/id/alterations/alt0000001544
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/recipes/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/recipes/columns/id/column
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/notifications/columns/source_entity_type/column



ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".recipes 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

