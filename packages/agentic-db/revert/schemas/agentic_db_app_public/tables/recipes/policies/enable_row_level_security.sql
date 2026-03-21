-- Revert: schemas/agentic_db_app_public/tables/recipes/policies/enable_row_level_security


ALTER TABLE agentic_db_app_public.recipes 
  DISABLE ROW LEVEL SECURITY;


