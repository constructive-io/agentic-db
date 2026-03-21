-- Revert: schemas/agentic_db_app_public/tables/session_chunks/columns/updated_at/alterations/alt0000004267




ALTER TABLE agentic_db_app_public.session_chunks 
    ALTER COLUMN updated_at DROP DEFAULT;



