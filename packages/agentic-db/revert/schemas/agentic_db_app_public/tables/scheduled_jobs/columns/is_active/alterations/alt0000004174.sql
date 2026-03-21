-- Revert: schemas/agentic_db_app_public/tables/scheduled_jobs/columns/is_active/alterations/alt0000004174




ALTER TABLE agentic_db_app_public.scheduled_jobs 
    ALTER COLUMN is_active DROP DEFAULT;



