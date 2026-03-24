-- Revert: schemas/agentic_db_app_public/tables/runtime_logs/columns/step_index/column


ALTER TABLE agentic_db_app_public.runtime_logs 
  DROP COLUMN step_index RESTRICT;


