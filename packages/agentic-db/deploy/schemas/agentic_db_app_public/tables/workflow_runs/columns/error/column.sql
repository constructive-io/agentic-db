-- Deploy: schemas/agentic_db_app_public/tables/workflow_runs/columns/error/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/workflow_runs/table
-- requires: schemas/agentic_db_app_public/tables/workflow_runs/columns/output/column


ALTER TABLE agentic_db_app_public.workflow_runs 
  ADD COLUMN error text;

