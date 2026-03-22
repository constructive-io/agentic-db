-- Revert: schemas/agentic_db_app_public/tables/event_chunks/columns/created_at/alterations/alt0000001011




ALTER TABLE "agentic_db_app_public".event_chunks 
    ALTER COLUMN created_at DROP DEFAULT;



