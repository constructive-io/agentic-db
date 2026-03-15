-- Revert: schemas/agent_db_profiles_public/tables/org_profiles/constraints/org_profiles_pkey/constraint


ALTER TABLE agent_db_profiles_public.org_profiles 
  DROP CONSTRAINT org_profiles_pkey;


