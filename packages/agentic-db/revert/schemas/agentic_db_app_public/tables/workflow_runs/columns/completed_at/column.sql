-- Revert: schemas/agentic_db_app_public/tables/workflow_runs/columns/completed_at/column


ALTER TABLE agentic_db_app_public.workflow_runs 
  DROP COLUMN completed_at RESTRICT;


