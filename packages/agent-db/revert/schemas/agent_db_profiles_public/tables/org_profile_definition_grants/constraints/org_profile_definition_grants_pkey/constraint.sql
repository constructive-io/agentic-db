-- Revert: schemas/agent_db_profiles_public/tables/org_profile_definition_grants/constraints/org_profile_definition_grants_pkey/constraint


ALTER TABLE agent_db_profiles_public.org_profile_definition_grants 
  DROP CONSTRAINT org_profile_definition_grants_pkey;


