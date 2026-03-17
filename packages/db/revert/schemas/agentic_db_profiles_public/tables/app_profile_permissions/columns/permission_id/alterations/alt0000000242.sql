-- Revert: schemas/agentic_db_profiles_public/tables/app_profile_permissions/columns/permission_id/alterations/alt0000000242


ALTER TABLE "agentic_db_profiles_public".app_profile_permissions 
  ALTER COLUMN permission_id DROP NOT NULL;


