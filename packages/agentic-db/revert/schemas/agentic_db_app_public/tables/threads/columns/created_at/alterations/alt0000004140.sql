-- Revert: schemas/agentic_db_app_public/tables/threads/columns/created_at/alterations/alt0000004140




ALTER TABLE agentic_db_app_public.threads 
    ALTER COLUMN created_at DROP DEFAULT;



