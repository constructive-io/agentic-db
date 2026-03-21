-- Revert: schemas/agentic_db_app_public/tables/workflows/columns/created_at/alterations/alt0000004192




ALTER TABLE agentic_db_app_public.workflows 
    ALTER COLUMN created_at DROP DEFAULT;



