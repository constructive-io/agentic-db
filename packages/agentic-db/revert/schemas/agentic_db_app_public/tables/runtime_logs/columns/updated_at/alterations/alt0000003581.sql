-- Revert: schemas/agentic_db_app_public/tables/runtime_logs/columns/updated_at/alterations/alt0000003581


ALTER TABLE agentic_db_app_public.runtime_logs 
  ALTER COLUMN updated_at DROP NOT NULL;


