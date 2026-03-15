-- Revert: schemas/agent_db_profiles_public/tables/org_profile_permissions/grants/authenticated/insert/grant


REVOKE INSERT ON agent_db_profiles_public.org_profile_permissions FROM authenticated;


