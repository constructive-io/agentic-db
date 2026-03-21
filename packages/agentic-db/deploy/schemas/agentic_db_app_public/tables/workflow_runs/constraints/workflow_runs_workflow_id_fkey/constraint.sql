-- Deploy: schemas/agentic_db_app_public/tables/workflow_runs/constraints/workflow_runs_workflow_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/workflows/table
-- requires: schemas/agentic_db_app_public/tables/workflow_runs/table
-- requires: schemas/agentic_db_app_public/tables/workflow_steps/indexes/workflow_steps_workflow_id_idx


ALTER TABLE agentic_db_app_public.workflow_runs 
  ADD CONSTRAINT workflow_runs_workflow_id_fkey 
    FOREIGN KEY(workflow_id) 
    REFERENCES agentic_db_app_public.workflows (id) 
    ON DELETE CASCADE;

