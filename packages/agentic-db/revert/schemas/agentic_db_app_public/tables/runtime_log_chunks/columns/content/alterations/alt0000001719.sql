-- Revert: schemas/agentic_db_app_public/tables/runtime_log_chunks/columns/content/alterations/alt0000001719


ALTER TABLE "agentic_db_app_public".runtime_log_chunks 
  ALTER COLUMN content DROP NOT NULL;


