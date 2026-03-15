-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/agent_spawns/alterations/alt0000001255
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/agent_spawns/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/workflow_runs/columns/error/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".agent_spawns 
  DISABLE ROW LEVEL SECURITY;

