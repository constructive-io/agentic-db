-- Revert: schemas/agentic_db_app_public/tables/runtime_logs/columns/created_at/alterations/alt0000000002


ALTER TABLE agentic_db_app_public.runtime_logs 
  ALTER COLUMN created_at DROP DEFAULT;


