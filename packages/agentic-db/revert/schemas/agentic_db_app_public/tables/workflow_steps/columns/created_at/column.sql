-- Revert: schemas/agentic_db_app_public/tables/workflow_steps/columns/created_at/column


ALTER TABLE agentic_db_app_public.workflow_steps 
  DROP COLUMN created_at RESTRICT;


