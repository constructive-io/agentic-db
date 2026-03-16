-- Revert: schemas/agent_db_app_public/tables/workflow_runs/columns/updated_at/alterations/alt0000002084


ALTER TABLE "agent_db_app_public".workflow_runs 
  ALTER COLUMN updated_at DROP NOT NULL;


