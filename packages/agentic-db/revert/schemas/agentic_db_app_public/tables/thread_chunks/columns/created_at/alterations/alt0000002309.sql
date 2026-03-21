-- Revert: schemas/agentic_db_app_public/tables/thread_chunks/columns/created_at/alterations/alt0000002309




ALTER TABLE "agentic_db_app_public".thread_chunks 
    ALTER COLUMN created_at DROP DEFAULT;



