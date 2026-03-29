-- Deploy: schemas/agentic_db_profiles_public/tables/app_profile_permissions/alterations/alt0000002768
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_profiles_public/schema
-- requires: schemas/agentic_db_profiles_public/tables/app_profile_permissions/table


ALTER TABLE agentic_db_profiles_public.app_profile_permissions 
  DISABLE ROW LEVEL SECURITY;

