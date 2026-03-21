-- Revert: schemas/agentic_db_app_public/tables/workflow_steps/columns/workflow_id/column


ALTER TABLE agentic_db_app_public.workflow_steps 
  DROP COLUMN workflow_id RESTRICT;


