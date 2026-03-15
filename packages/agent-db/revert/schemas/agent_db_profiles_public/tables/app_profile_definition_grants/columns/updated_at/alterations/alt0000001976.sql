-- Revert: schemas/agent_db_profiles_public/tables/app_profile_definition_grants/columns/updated_at/alterations/alt0000001976


ALTER TABLE "agent_db_profiles_public".app_profile_definition_grants 
  ALTER COLUMN updated_at DROP DEFAULT;


