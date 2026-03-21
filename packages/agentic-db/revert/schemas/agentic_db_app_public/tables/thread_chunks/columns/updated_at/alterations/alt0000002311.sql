-- Revert: schemas/agentic_db_app_public/tables/thread_chunks/columns/updated_at/alterations/alt0000002311




ALTER TABLE "agentic_db_app_public".thread_chunks 
    ALTER COLUMN updated_at DROP DEFAULT;



