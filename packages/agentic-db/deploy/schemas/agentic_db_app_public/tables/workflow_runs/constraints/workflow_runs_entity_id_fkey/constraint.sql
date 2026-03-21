-- Deploy: schemas/agentic_db_app_public/tables/workflow_runs/constraints/workflow_runs_entity_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_users_public/tables/users/table
-- requires: schemas/agentic_db_app_public/tables/workflow_runs/table
-- requires: schemas/agentic_db_app_public/tables/workflow_steps/columns/timeout_ms/column


ALTER TABLE agentic_db_app_public.workflow_runs 
  ADD CONSTRAINT workflow_runs_entity_id_fkey 
    FOREIGN KEY(entity_id) 
    REFERENCES agentic_db_users_public.users (id) 
    ON DELETE CASCADE;

