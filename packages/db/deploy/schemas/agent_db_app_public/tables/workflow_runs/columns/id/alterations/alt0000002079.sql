-- Deploy: schemas/agent_db_app_public/tables/workflow_runs/columns/id/alterations/alt0000002079
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/workflow_runs/table
-- requires: schemas/agent_db_app_public/tables/workflow_runs/columns/id/column
-- requires: schemas/agent_db_app_public/tables/workflow_steps/columns/timeout_ms/column


ALTER TABLE "agent_db_app_public".workflow_runs 
  ALTER COLUMN id SET NOT NULL;

