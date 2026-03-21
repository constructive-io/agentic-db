-- Revert: schemas/agentic_db_app_public/tables/execution_log/columns/created_at/column


ALTER TABLE agentic_db_app_public.execution_log 
  DROP COLUMN created_at RESTRICT;


