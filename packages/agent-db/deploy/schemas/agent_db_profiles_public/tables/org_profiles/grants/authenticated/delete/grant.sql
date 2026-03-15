-- Deploy: schemas/agent_db_profiles_public/tables/org_profiles/grants/authenticated/delete/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_profiles_public/schema
-- requires: schemas/agent_db_profiles_public/tables/org_profiles/table


GRANT DELETE ON agent_db_profiles_public.org_profiles TO authenticated;

