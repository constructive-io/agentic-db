-- Deploy: schemas/agent_db_profiles_public/tables/app_profile_permissions/alterations/alt0000003454
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_profiles_public/schema
-- requires: schemas/agent_db_profiles_public/tables/app_profile_permissions/table


ALTER TABLE "agent_db_profiles_public".app_profile_permissions 
  DISABLE ROW LEVEL SECURITY;

