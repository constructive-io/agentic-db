-- Revert: schemas/agentic_db_app_public/tables/workflow_steps/columns/updated_at/alterations/alt0000004203


ALTER TABLE agentic_db_app_public.workflow_steps 
  ALTER COLUMN updated_at DROP NOT NULL;


