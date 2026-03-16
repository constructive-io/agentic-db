-- Revert: schemas/agent_db_profiles_public/tables/app_profile_definition_grants/columns/permission_id/alterations/alt0000001117


ALTER TABLE "agent_db_profiles_public".app_profile_definition_grants 
  ALTER COLUMN permission_id DROP NOT NULL;


