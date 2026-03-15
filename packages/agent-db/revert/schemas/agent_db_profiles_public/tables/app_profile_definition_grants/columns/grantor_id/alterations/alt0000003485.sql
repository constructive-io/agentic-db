-- Revert: schemas/agent_db_profiles_public/tables/app_profile_definition_grants/columns/grantor_id/alterations/alt0000003485




ALTER TABLE "agent_db_profiles_public".app_profile_definition_grants 
    ALTER COLUMN grantor_id DROP DEFAULT;



