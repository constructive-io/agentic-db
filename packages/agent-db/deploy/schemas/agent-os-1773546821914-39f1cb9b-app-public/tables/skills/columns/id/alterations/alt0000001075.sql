-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/skills/columns/id/alterations/alt0000001075
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/skills/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/skills/columns/id/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/memories/columns/embedding/column



ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".skills 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

