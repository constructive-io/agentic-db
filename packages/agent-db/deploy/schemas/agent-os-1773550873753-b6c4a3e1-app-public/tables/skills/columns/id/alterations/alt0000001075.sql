-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/skills/columns/id/alterations/alt0000001075
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/skills/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/skills/columns/id/column
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/memories/columns/embedding/column



ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".skills 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

