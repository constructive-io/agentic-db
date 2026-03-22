-- Revert: schemas/agentic_db_profiles_public/tables/app_profile_definition_grants/columns/is_grant/alterations/alt0000004942


ALTER TABLE agentic_db_profiles_public.app_profile_definition_grants 
  ALTER COLUMN is_grant DROP NOT NULL;


