-- Revert: schemas/agentic_db_app_public/tables/runtime_logs_chunks/columns/created_at/alterations/alt0000001446


ALTER TABLE "agentic_db_app_public".runtime_logs_chunks 
  ALTER COLUMN created_at DROP DEFAULT;


