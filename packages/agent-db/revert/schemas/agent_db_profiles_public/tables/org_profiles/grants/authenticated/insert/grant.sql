-- Revert: schemas/agent_db_profiles_public/tables/org_profiles/grants/authenticated/insert/grant


REVOKE INSERT ON agent_db_profiles_public.org_profiles FROM authenticated;


