-- Revert: schemas/agentic_db_app_public/tables/runtime_log_chunks/columns/runtime_log_id/alterations/alt0000001798


ALTER TABLE "agentic_db_app_public".runtime_log_chunks 
  ALTER COLUMN runtime_log_id DROP NOT NULL;


