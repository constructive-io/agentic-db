-- Revert: schemas/agent_db_profiles_public/tables/app_profile_permissions/columns/permission_id/column


ALTER TABLE "agent_db_profiles_public".app_profile_permissions 
  DROP COLUMN permission_id RESTRICT;


