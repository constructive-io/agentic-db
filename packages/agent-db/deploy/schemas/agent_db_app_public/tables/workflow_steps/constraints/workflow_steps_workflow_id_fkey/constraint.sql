-- Deploy: schemas/agent_db_app_public/tables/workflow_steps/constraints/workflow_steps_workflow_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/workflows/table
-- requires: schemas/agent_db_app_public/tables/workflow_steps/table
-- requires: schemas/agent_db_app_public/tables/scheduled_jobs/constraints/scheduled_jobs_agent_id_fkey/constraint


ALTER TABLE "agent_db_app_public".workflow_steps 
  ADD CONSTRAINT workflow_steps_workflow_id_fkey 
    FOREIGN KEY(workflow_id) 
    REFERENCES "agent_db_app_public".workflows (id) 
    ON DELETE CASCADE;

