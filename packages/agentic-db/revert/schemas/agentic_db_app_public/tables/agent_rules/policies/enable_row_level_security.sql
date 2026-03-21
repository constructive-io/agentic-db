-- Revert: schemas/agentic_db_app_public/tables/agent_rules/policies/enable_row_level_security


ALTER TABLE agentic_db_app_public.agent_rules 
  DISABLE ROW LEVEL SECURITY;


