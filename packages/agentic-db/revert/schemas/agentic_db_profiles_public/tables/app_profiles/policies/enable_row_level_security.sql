-- Revert: schemas/agentic_db_profiles_public/tables/app_profiles/policies/enable_row_level_security


ALTER TABLE agentic_db_profiles_public.app_profiles 
  DISABLE ROW LEVEL SECURITY;


