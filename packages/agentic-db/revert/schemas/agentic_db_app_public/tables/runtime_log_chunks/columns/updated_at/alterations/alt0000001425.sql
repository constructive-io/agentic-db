-- Revert: schemas/agentic_db_app_public/tables/runtime_log_chunks/columns/updated_at/alterations/alt0000001425


ALTER TABLE "agentic_db_app_public".runtime_log_chunks 
  ALTER COLUMN updated_at DROP NOT NULL;


