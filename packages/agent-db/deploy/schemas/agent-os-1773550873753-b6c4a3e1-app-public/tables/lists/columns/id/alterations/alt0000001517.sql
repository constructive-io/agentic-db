-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/lists/columns/id/alterations/alt0000001517
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/lists/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/lists/columns/id/column
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/habit_logs/columns/tags/column



ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".lists 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

