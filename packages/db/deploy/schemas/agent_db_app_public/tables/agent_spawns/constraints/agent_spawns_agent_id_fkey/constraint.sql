-- Deploy: schemas/agent_db_app_public/tables/agent_spawns/constraints/agent_spawns_agent_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/agents/table
-- requires: schemas/agent_db_app_public/tables/agent_spawns/table
-- requires: schemas/agent_db_app_public/tables/session_archives/constraints/session_archives_session_id_fkey/constraint


ALTER TABLE "agent_db_app_public".agent_spawns 
  ADD CONSTRAINT agent_spawns_agent_id_fkey 
    FOREIGN KEY(agent_id) 
    REFERENCES "agent_db_app_public".agents (id) 
    ON DELETE CASCADE;

