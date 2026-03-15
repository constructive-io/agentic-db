-- Revert: schemas/agent_db_app_public/tables/skills/policies/enable_row_level_security


ALTER TABLE agent_db_app_public.skills 
  DISABLE ROW LEVEL SECURITY;


