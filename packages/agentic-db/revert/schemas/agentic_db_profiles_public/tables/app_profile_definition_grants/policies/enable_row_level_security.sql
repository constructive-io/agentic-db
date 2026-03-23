-- Revert: schemas/agentic_db_profiles_public/tables/app_profile_definition_grants/policies/enable_row_level_security


ALTER TABLE agentic_db_profiles_public.app_profile_definition_grants 
  DISABLE ROW LEVEL SECURITY;


