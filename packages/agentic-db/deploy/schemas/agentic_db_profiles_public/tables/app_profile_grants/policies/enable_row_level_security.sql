-- Deploy: schemas/agentic_db_profiles_public/tables/app_profile_grants/policies/enable_row_level_security
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_profiles_public/schema
-- requires: schemas/agentic_db_profiles_public/tables/app_profile_grants/table


ALTER TABLE agentic_db_profiles_public.app_profile_grants 
  ENABLE ROW LEVEL SECURITY;

