-- Deploy: schemas/agent_db_profiles_public/tables/org_profile_grants/grants/authenticated/select/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_profiles_public/schema
-- requires: schemas/agent_db_profiles_public/tables/org_profile_grants/table


GRANT SELECT ON "agent_db_profiles_public".org_profile_grants TO authenticated;

