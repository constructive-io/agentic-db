-- Revert: schemas/agent_db_app_public/tables/workflow_runs/constraints/workflow_runs_pkey/constraint


ALTER TABLE "agent_db_app_public".workflow_runs 
  DROP CONSTRAINT workflow_runs_pkey;


