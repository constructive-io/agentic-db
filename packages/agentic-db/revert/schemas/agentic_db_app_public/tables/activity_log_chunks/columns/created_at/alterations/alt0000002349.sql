-- Revert: schemas/agentic_db_app_public/tables/activity_log_chunks/columns/created_at/alterations/alt0000002349




ALTER TABLE "agentic_db_app_public".activity_log_chunks 
    ALTER COLUMN created_at DROP DEFAULT;



