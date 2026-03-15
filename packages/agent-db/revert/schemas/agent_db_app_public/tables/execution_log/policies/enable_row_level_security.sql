-- Revert: schemas/agent_db_app_public/tables/execution_log/policies/enable_row_level_security


ALTER TABLE agent_db_app_public.execution_log 
  DISABLE ROW LEVEL SECURITY;


