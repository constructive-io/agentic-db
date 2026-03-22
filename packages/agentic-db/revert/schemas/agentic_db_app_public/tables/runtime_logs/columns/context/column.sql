-- Revert: schemas/agentic_db_app_public/tables/runtime_logs/columns/context/column


ALTER TABLE agentic_db_app_public.runtime_logs 
  DROP COLUMN context RESTRICT;


