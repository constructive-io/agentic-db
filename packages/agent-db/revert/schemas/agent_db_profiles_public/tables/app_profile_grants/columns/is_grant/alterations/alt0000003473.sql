-- Revert: schemas/agent_db_profiles_public/tables/app_profile_grants/columns/is_grant/alterations/alt0000003473




ALTER TABLE "agent_db_profiles_public".app_profile_grants 
    ALTER COLUMN is_grant DROP DEFAULT;



