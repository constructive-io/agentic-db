-- Revert: schemas/agentic_db_profiles_public/tables/app_profile_grants/constraints/app_profile_grants_membership_id_fkey/constraint


ALTER TABLE agentic_db_profiles_public.app_profile_grants 
  DROP CONSTRAINT app_profile_grants_membership_id_fkey;


