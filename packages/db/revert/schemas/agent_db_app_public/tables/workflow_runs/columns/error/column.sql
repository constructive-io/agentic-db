-- Revert: schemas/agent_db_app_public/tables/workflow_runs/columns/error/column


ALTER TABLE "agent_db_app_public".workflow_runs 
  DROP COLUMN error RESTRICT;


