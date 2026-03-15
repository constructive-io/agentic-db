-- Revert: schemas/agent_db_app_public/tables/rules/policies/enable_row_level_security


ALTER TABLE agent_db_app_public.rules 
  DISABLE ROW LEVEL SECURITY;


