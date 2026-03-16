-- Deploy: schemas/agent_db_profiles_public/tables/app_profile_permissions/columns/permission_id/alterations/alt0000001094
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_profiles_public/schema
-- requires: schemas/agent_db_profiles_public/tables/app_profile_permissions/table
-- requires: schemas/agent_db_profiles_public/tables/app_profile_permissions/columns/permission_id/column


ALTER TABLE "agent_db_profiles_public".app_profile_permissions 
  ALTER COLUMN permission_id SET NOT NULL;

