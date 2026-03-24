-- Revert: schemas/agentic_db_profiles_public/tables/app_profile_definition_grants/columns/updated_at/alterations/alt0000001596


ALTER TABLE agentic_db_profiles_public.app_profile_definition_grants 
  ALTER COLUMN updated_at DROP DEFAULT;


