-- Deploy: schemas/agentic_db_profiles_public/tables/app_profile_permissions/columns/permission_id/alterations/alt0000000242
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_profiles_public/schema
-- requires: schemas/agentic_db_profiles_public/tables/app_profile_permissions/table
-- requires: schemas/agentic_db_profiles_public/tables/app_profile_permissions/columns/permission_id/column


ALTER TABLE "agentic_db_profiles_public".app_profile_permissions 
  ALTER COLUMN permission_id SET NOT NULL;

