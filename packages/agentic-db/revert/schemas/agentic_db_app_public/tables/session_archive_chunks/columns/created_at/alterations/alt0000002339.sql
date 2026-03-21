-- Revert: schemas/agentic_db_app_public/tables/session_archive_chunks/columns/created_at/alterations/alt0000002339




ALTER TABLE "agentic_db_app_public".session_archive_chunks 
    ALTER COLUMN created_at DROP DEFAULT;



