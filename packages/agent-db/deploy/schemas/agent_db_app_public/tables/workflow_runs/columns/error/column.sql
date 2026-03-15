-- Deploy: schemas/agent_db_app_public/tables/workflow_runs/columns/error/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/workflow_runs/table
-- requires: schemas/agent_db_app_public/tables/workflow_runs/columns/output/column


ALTER TABLE "agent_db_app_public".workflow_runs 
  ADD COLUMN error text;

