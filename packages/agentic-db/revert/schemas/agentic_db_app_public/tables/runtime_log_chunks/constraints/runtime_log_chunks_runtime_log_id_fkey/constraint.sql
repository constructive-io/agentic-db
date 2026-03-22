-- Revert: schemas/agentic_db_app_public/tables/runtime_log_chunks/constraints/runtime_log_chunks_runtime_log_id_fkey/constraint


ALTER TABLE agentic_db_app_public.runtime_log_chunks 
  DROP CONSTRAINT runtime_log_chunks_runtime_log_id_fkey;


