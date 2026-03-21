-- Revert: schemas/agentic_db_app_public/tables/workflow_runs/columns/error/column


ALTER TABLE agentic_db_app_public.workflow_runs 
  DROP COLUMN error RESTRICT;


