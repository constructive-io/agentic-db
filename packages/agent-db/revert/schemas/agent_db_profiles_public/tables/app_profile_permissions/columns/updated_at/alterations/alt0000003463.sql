-- Revert: schemas/agent_db_profiles_public/tables/app_profile_permissions/columns/updated_at/alterations/alt0000003463


ALTER TABLE "agent_db_profiles_public".app_profile_permissions 
  ALTER COLUMN updated_at DROP DEFAULT;


