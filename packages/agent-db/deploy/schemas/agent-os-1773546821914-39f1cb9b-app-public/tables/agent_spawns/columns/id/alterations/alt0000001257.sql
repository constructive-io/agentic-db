-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/agent_spawns/columns/id/alterations/alt0000001257
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/agent_spawns/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/agent_spawns/columns/id/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/workflow_runs/columns/error/column



ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".agent_spawns 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

