-- Deploy: schemas/agent_db_profiles_public/tables/app_profile_permissions/columns/id/alterations/alt0000000238
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_profiles_public/schema
-- requires: schemas/agent_db_profiles_public/tables/app_profile_permissions/table
-- requires: schemas/agent_db_profiles_public/tables/app_profile_permissions/columns/id/column


ALTER TABLE agent_db_profiles_public.app_profile_permissions 
  ALTER COLUMN id SET NOT NULL;

