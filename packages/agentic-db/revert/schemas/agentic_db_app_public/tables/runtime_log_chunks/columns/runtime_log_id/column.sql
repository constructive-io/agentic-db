-- Revert: schemas/agentic_db_app_public/tables/runtime_log_chunks/columns/runtime_log_id/column


ALTER TABLE agentic_db_app_public.runtime_log_chunks 
  DROP COLUMN runtime_log_id RESTRICT;


