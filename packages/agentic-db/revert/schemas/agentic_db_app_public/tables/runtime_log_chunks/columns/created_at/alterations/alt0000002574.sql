-- Revert: schemas/agentic_db_app_public/tables/runtime_log_chunks/columns/created_at/alterations/alt0000002574


ALTER TABLE agentic_db_app_public.runtime_log_chunks 
  ALTER COLUMN created_at DROP NOT NULL;


