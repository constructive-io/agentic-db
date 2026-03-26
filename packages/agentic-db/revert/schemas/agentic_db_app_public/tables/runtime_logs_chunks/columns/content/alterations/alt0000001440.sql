-- Revert: schemas/agentic_db_app_public/tables/runtime_logs_chunks/columns/content/alterations/alt0000001440


ALTER TABLE "agentic_db_app_public".runtime_logs_chunks 
  ALTER COLUMN content DROP NOT NULL;


