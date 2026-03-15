-- Revert: schemas/agent_db_profiles_public/tables/app_profile_definition_grants/columns/profile_id/alterations/alt0000003433


ALTER TABLE "agent_db_profiles_public".app_profile_definition_grants 
  ALTER COLUMN profile_id DROP NOT NULL;


