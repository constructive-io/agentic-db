-- Revert: schemas/agentic_db_profiles_public/tables/app_profile_permissions/columns/updated_at/alterations/alt0000001091


ALTER TABLE "agentic_db_profiles_public".app_profile_permissions 
  ALTER COLUMN updated_at DROP DEFAULT;


