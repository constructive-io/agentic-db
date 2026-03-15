-- Deploy: schemas/agent_db_profiles_public/tables/org_profile_grants/grants/authenticated/insert/grant
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_profiles_public/schema
-- requires: schemas/agent_db_profiles_public/tables/org_profile_grants/table


GRANT INSERT ON agent_db_profiles_public.org_profile_grants TO authenticated;

