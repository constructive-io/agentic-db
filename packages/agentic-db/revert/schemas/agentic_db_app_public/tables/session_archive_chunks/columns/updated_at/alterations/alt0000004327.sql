-- Revert: schemas/agentic_db_app_public/tables/session_archive_chunks/columns/updated_at/alterations/alt0000004327




ALTER TABLE agentic_db_app_public.session_archive_chunks 
    ALTER COLUMN updated_at DROP DEFAULT;



