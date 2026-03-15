-- Deploy: schemas/agent_db_profiles_public/tables/app_profile_permissions/columns/profile_id/alterations/alt0000000240
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_profiles_public/schema
-- requires: schemas/agent_db_profiles_public/tables/app_profile_permissions/table
-- requires: schemas/agent_db_profiles_public/tables/app_profile_permissions/columns/profile_id/column


ALTER TABLE agent_db_profiles_public.app_profile_permissions 
  ALTER COLUMN profile_id SET NOT NULL;

