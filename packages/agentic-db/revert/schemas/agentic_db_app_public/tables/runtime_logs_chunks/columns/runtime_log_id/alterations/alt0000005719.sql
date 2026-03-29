-- Revert: schemas/agentic_db_app_public/tables/runtime_logs_chunks/columns/runtime_log_id/alterations/alt0000005719


ALTER TABLE agentic_db_app_public.runtime_logs_chunks 
  ALTER COLUMN runtime_log_id DROP NOT NULL;


