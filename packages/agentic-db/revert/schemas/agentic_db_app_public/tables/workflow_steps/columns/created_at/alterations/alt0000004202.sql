-- Revert: schemas/agentic_db_app_public/tables/workflow_steps/columns/created_at/alterations/alt0000004202




ALTER TABLE agentic_db_app_public.workflow_steps 
    ALTER COLUMN created_at DROP DEFAULT;



