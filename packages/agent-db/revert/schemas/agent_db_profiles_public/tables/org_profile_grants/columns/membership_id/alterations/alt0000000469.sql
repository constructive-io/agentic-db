-- Revert: schemas/agent_db_profiles_public/tables/org_profile_grants/columns/membership_id/alterations/alt0000000469


ALTER TABLE agent_db_profiles_public.org_profile_grants 
  ALTER COLUMN membership_id DROP NOT NULL;


