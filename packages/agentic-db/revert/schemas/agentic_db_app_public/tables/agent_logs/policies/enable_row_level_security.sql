-- Revert: schemas/agentic_db_app_public/tables/agent_logs/policies/enable_row_level_security


ALTER TABLE agentic_db_app_public.agent_logs 
  DISABLE ROW LEVEL SECURITY;


