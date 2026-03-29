-- Revert: schemas/agentic_db_profiles_public/tables/app_profile_grants/columns/is_grant/alterations/alt0000004472


ALTER TABLE agentic_db_profiles_public.app_profile_grants 
  ALTER COLUMN is_grant DROP NOT NULL;


