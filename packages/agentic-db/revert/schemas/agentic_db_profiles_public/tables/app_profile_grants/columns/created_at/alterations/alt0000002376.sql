-- Revert: schemas/agentic_db_profiles_public/tables/app_profile_grants/columns/created_at/alterations/alt0000002376


ALTER TABLE agentic_db_profiles_public.app_profile_grants 
  ALTER COLUMN created_at DROP DEFAULT;


