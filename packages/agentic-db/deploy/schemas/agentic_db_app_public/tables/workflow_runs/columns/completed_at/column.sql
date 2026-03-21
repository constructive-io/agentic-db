-- Deploy: schemas/agentic_db_app_public/tables/workflow_runs/columns/completed_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/workflow_runs/table
-- requires: schemas/agentic_db_app_public/tables/workflow_runs/columns/started_at/column


ALTER TABLE agentic_db_app_public.workflow_runs 
  ADD COLUMN completed_at timestamptz;

