-- Deploy: schemas/agentic_db_profiles_public/tables/app_profile_grants/alterations/alt0000001415
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_profiles_public/schema
-- requires: schemas/agentic_db_profiles_public/tables/app_profile_grants/table


ALTER TABLE agentic_db_profiles_public.app_profile_grants 
  DISABLE ROW LEVEL SECURITY;

