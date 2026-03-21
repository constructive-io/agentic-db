-- Revert: schemas/agentic_db_app_public/tables/execution_log/policies/enable_row_level_security


ALTER TABLE agentic_db_app_public.execution_log 
  DISABLE ROW LEVEL SECURITY;


