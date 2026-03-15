-- Deploy: schemas/agent_db_app_public/tables/workflow_runs/alterations/alt0000004463
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/workflow_runs/table
-- requires: schemas/agent_db_app_public/tables/workflow_steps/columns/timeout_ms/column


ALTER TABLE "agent_db_app_public".workflow_runs 
  DISABLE ROW LEVEL SECURITY;

