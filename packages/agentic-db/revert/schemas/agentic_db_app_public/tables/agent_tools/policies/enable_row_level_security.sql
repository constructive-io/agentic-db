-- Revert: schemas/agentic_db_app_public/tables/agent_tools/policies/enable_row_level_security


ALTER TABLE agentic_db_app_public.agent_tools 
  DISABLE ROW LEVEL SECURITY;


