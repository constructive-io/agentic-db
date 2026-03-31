-- Revert: schemas/agentic_db_profiles_public/tables/app_profile_grants/columns/membership_id/alterations/alt0000002369


ALTER TABLE agentic_db_profiles_public.app_profile_grants 
  ALTER COLUMN membership_id DROP NOT NULL;


