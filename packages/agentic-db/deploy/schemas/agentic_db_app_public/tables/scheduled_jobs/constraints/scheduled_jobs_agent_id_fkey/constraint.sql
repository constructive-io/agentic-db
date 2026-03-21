-- Deploy: schemas/agentic_db_app_public/tables/scheduled_jobs/constraints/scheduled_jobs_agent_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agents/table
-- requires: schemas/agentic_db_app_public/tables/scheduled_jobs/table
-- requires: schemas/agentic_db_app_public/tables/processes/indexes/processes_agent_id_idx


ALTER TABLE "agentic_db_app_public".scheduled_jobs 
  ADD CONSTRAINT scheduled_jobs_agent_id_fkey 
    FOREIGN KEY(agent_id) 
    REFERENCES "agentic_db_app_public".agents (id) 
    ON DELETE CASCADE;

