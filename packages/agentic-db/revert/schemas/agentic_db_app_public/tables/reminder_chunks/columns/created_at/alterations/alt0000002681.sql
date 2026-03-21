-- Revert: schemas/agentic_db_app_public/tables/reminder_chunks/columns/created_at/alterations/alt0000002681




ALTER TABLE "agentic_db_app_public".reminder_chunks 
    ALTER COLUMN created_at DROP DEFAULT;



