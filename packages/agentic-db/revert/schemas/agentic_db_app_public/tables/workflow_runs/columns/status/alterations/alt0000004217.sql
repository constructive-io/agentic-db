-- Revert: schemas/agentic_db_app_public/tables/workflow_runs/columns/status/alterations/alt0000004217




ALTER TABLE agentic_db_app_public.workflow_runs 
    ALTER COLUMN status DROP DEFAULT;



