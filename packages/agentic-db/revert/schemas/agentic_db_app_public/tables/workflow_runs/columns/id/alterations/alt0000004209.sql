-- Revert: schemas/agentic_db_app_public/tables/workflow_runs/columns/id/alterations/alt0000004209


ALTER TABLE agentic_db_app_public.workflow_runs 
  ALTER COLUMN id DROP NOT NULL;


