-- Deploy: schemas/agent_db_app_public/tables/sessions/constraints/sessions_agent_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/agents/table
-- requires: schemas/agent_db_app_public/tables/sessions/table
-- requires: schemas/agent_db_app_public/tables/activity_log/columns/metadata/column


ALTER TABLE agent_db_app_public.sessions 
  ADD CONSTRAINT sessions_agent_id_fkey 
    FOREIGN KEY(agent_id) 
    REFERENCES agent_db_app_public.agents (id) 
    ON DELETE CASCADE;

