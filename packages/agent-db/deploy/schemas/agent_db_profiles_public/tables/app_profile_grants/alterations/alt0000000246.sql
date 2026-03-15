-- Deploy: schemas/agent_db_profiles_public/tables/app_profile_grants/alterations/alt0000000246
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_profiles_public/schema
-- requires: schemas/agent_db_profiles_public/tables/app_profile_grants/table


ALTER TABLE agent_db_profiles_public.app_profile_grants 
  DISABLE ROW LEVEL SECURITY;

