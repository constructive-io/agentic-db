-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/interactions/columns/id/alterations/alt0000000919
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/interactions/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/interactions/columns/id/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/notes/columns/embedding/column



ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".interactions 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

