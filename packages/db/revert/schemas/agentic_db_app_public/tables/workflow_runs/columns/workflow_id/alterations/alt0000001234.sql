-- Revert: schemas/agentic_db_app_public/tables/workflow_runs/columns/workflow_id/alterations/alt0000001234


ALTER TABLE "agentic_db_app_public".workflow_runs 
  ALTER COLUMN workflow_id DROP NOT NULL;


