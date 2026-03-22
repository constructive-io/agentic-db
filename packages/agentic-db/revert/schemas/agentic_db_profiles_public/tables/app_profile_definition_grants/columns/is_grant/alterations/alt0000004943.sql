-- Revert: schemas/agentic_db_profiles_public/tables/app_profile_definition_grants/columns/is_grant/alterations/alt0000004943




ALTER TABLE agentic_db_profiles_public.app_profile_definition_grants 
    ALTER COLUMN is_grant DROP DEFAULT;



