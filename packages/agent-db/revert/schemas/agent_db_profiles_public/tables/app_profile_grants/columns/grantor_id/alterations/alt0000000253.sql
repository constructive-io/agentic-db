-- Revert: schemas/agent_db_profiles_public/tables/app_profile_grants/columns/grantor_id/alterations/alt0000000253




ALTER TABLE agent_db_profiles_public.app_profile_grants 
    ALTER COLUMN grantor_id DROP DEFAULT;



