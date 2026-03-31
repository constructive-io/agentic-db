-- Revert: schemas/agentic_db_app_public/tables/runtime_logs_chunks/columns/runtime_logs_id/alterations/alt0000003589


ALTER TABLE agentic_db_app_public.runtime_logs_chunks 
  ALTER COLUMN runtime_logs_id DROP NOT NULL;


