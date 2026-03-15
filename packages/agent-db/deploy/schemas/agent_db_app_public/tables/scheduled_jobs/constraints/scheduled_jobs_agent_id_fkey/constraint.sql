-- Deploy: schemas/agent_db_app_public/tables/scheduled_jobs/constraints/scheduled_jobs_agent_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/agents/table
-- requires: schemas/agent_db_app_public/tables/scheduled_jobs/table
-- requires: schemas/agent_db_app_public/tables/processes/constraints/processes_agent_id_fkey/constraint


ALTER TABLE agent_db_app_public.scheduled_jobs 
  ADD CONSTRAINT scheduled_jobs_agent_id_fkey 
    FOREIGN KEY(agent_id) 
    REFERENCES agent_db_app_public.agents (id) 
    ON DELETE CASCADE;

