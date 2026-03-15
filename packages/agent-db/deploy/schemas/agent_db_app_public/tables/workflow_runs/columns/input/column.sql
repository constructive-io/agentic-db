-- Deploy: schemas/agent_db_app_public/tables/workflow_runs/columns/input/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/workflow_runs/table
-- requires: schemas/agent_db_app_public/tables/workflow_runs/columns/completed_at/column


ALTER TABLE agent_db_app_public.workflow_runs 
  ADD COLUMN input jsonb;

