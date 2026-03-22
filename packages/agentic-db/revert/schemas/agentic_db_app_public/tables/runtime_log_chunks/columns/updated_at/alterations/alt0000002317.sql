-- Revert: schemas/agentic_db_app_public/tables/runtime_log_chunks/columns/updated_at/alterations/alt0000002317




ALTER TABLE "agentic_db_app_public".runtime_log_chunks 
    ALTER COLUMN updated_at DROP DEFAULT;



