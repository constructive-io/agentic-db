-- Revert: schemas/agentic_db_app_public/tables/runtime_logs/columns/updated_at/column


ALTER TABLE agentic_db_app_public.runtime_logs 
  DROP COLUMN updated_at RESTRICT;


