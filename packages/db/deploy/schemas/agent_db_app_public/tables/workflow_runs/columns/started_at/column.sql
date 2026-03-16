-- Deploy: schemas/agent_db_app_public/tables/workflow_runs/columns/started_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/workflow_runs/table
-- requires: schemas/agent_db_app_public/tables/workflow_runs/columns/status/alterations/alt0000002087


ALTER TABLE "agent_db_app_public".workflow_runs 
  ADD COLUMN started_at timestamptz;

