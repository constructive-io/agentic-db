-- Revert: schemas/agent_db_profiles_public/tables/app_profile_definition_grants/columns/is_grant/alterations/alt0000001972


ALTER TABLE "agent_db_profiles_public".app_profile_definition_grants 
  ALTER COLUMN is_grant DROP NOT NULL;


