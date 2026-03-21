-- Revert: schemas/agentic_db_app_public/tables/list_chunks/columns/created_at/alterations/alt0000004677




ALTER TABLE agentic_db_app_public.list_chunks 
    ALTER COLUMN created_at DROP DEFAULT;



