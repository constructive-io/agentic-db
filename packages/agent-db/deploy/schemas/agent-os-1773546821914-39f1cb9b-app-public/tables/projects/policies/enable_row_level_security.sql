-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/projects/policies/enable_row_level_security
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/projects/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/agent_spawns/constraints/agent_spawns_agent_id_fkey/constraint


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".projects 
  ENABLE ROW LEVEL SECURITY;

