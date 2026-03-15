-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/agent_spawns/columns/max_iterations/alterations/alt0000001266
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/agent_spawns/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/agent_spawns/columns/result/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/agent_spawns/columns/max_iterations/column



ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".agent_spawns 
    ALTER COLUMN max_iterations SET DEFAULT 15;

