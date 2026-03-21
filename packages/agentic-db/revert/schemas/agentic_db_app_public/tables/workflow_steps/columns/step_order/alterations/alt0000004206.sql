-- Revert: schemas/agentic_db_app_public/tables/workflow_steps/columns/step_order/alterations/alt0000004206


ALTER TABLE agentic_db_app_public.workflow_steps 
  ALTER COLUMN step_order DROP NOT NULL;


