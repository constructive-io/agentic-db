-- Revert: schemas/agentic_db_app_public/tables/runtime_logs_chunks/columns/updated_at/alterations/alt0000001334


ALTER TABLE "agentic_db_app_public".runtime_logs_chunks 
  ALTER COLUMN updated_at DROP DEFAULT;


