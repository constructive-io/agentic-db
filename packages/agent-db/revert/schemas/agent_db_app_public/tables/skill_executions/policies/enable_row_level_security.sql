-- Revert: schemas/agent_db_app_public/tables/skill_executions/policies/enable_row_level_security


ALTER TABLE agent_db_app_public.skill_executions 
  DISABLE ROW LEVEL SECURITY;


