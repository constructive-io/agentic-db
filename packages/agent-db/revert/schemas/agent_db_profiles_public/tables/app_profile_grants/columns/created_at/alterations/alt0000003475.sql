-- Revert: schemas/agent_db_profiles_public/tables/app_profile_grants/columns/created_at/alterations/alt0000003475


ALTER TABLE "agent_db_profiles_public".app_profile_grants 
  ALTER COLUMN created_at DROP DEFAULT;


