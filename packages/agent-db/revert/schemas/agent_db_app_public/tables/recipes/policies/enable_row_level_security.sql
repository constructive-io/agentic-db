-- Revert: schemas/agent_db_app_public/tables/recipes/policies/enable_row_level_security


ALTER TABLE agent_db_app_public.recipes 
  DISABLE ROW LEVEL SECURITY;


