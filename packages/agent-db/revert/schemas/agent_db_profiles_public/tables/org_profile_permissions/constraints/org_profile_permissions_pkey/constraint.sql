-- Revert: schemas/agent_db_profiles_public/tables/org_profile_permissions/constraints/org_profile_permissions_pkey/constraint


ALTER TABLE agent_db_profiles_public.org_profile_permissions 
  DROP CONSTRAINT org_profile_permissions_pkey;


