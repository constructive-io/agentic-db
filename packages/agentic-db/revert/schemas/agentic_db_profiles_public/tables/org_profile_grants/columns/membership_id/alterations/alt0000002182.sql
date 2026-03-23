-- Revert: schemas/agentic_db_profiles_public/tables/org_profile_grants/columns/membership_id/alterations/alt0000002182


ALTER TABLE agentic_db_profiles_public.org_profile_grants 
  ALTER COLUMN membership_id DROP NOT NULL;


