-- Revert: schemas/agent_db_profiles_public/tables/app_profile_permissions/columns/permission_id/alterations/alt0000001946


ALTER TABLE "agent_db_profiles_public".app_profile_permissions 
  ALTER COLUMN permission_id DROP NOT NULL;


