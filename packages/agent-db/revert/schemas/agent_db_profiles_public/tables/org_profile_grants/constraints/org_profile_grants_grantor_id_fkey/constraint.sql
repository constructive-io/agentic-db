-- Revert: schemas/agent_db_profiles_public/tables/org_profile_grants/constraints/org_profile_grants_grantor_id_fkey/constraint


ALTER TABLE agent_db_profiles_public.org_profile_grants 
  DROP CONSTRAINT org_profile_grants_grantor_id_fkey;


