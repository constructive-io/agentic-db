-- Revert: schemas/agentic_db_app_public/tables/workflow_runs/columns/started_at/column


ALTER TABLE "agentic_db_app_public".workflow_runs 
  DROP COLUMN started_at RESTRICT;


