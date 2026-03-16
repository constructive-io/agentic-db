-- Deploy: schemas/agentic_db_app_public/tables/workflow_steps/columns/on_failure_step/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/workflow_steps/table
-- requires: schemas/agentic_db_app_public/tables/workflow_steps/columns/on_success_step/column


ALTER TABLE "agentic_db_app_public".workflow_steps 
  ADD COLUMN on_failure_step int;

