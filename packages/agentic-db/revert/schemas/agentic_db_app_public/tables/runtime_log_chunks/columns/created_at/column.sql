-- Revert: schemas/agentic_db_app_public/tables/runtime_log_chunks/columns/created_at/column


ALTER TABLE agentic_db_app_public.runtime_log_chunks 
  DROP COLUMN created_at RESTRICT;


