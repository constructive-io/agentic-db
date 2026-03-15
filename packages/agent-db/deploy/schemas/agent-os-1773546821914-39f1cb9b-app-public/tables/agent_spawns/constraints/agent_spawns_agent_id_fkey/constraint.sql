-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/agent_spawns/constraints/agent_spawns_agent_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/agents/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/agent_spawns/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/session_archives/constraints/session_archives_session_id_fkey/constraint


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".agent_spawns 
  ADD CONSTRAINT agent_spawns_agent_id_fkey 
    FOREIGN KEY(agent_id) 
    REFERENCES "agent-os-1773546821914-39f1cb9b-app-public".agents (id) 
    ON DELETE CASCADE;

