-- Revert: schemas/agentic_db_app_public/tables/workflow_runs/columns/updated_at/column


ALTER TABLE "agentic_db_app_public".workflow_runs 
  DROP COLUMN updated_at RESTRICT;


