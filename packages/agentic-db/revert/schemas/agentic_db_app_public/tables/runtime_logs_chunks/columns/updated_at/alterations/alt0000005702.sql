-- Revert: schemas/agentic_db_app_public/tables/runtime_logs_chunks/columns/updated_at/alterations/alt0000005702


ALTER TABLE agentic_db_app_public.runtime_logs_chunks 
  ALTER COLUMN updated_at DROP NOT NULL;


