-- Revert: schemas/agentic_db_profiles_public/tables/app_profiles/columns/is_system/alterations/alt0000001398




ALTER TABLE agentic_db_profiles_public.app_profiles 
    ALTER COLUMN is_system DROP DEFAULT;



