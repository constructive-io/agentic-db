-- Deploy: schemas/agent_db_profiles_public/tables/org_profile_permissions/grants/authenticated/delete/grant
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_profiles_public/schema
-- requires: schemas/agent_db_profiles_public/tables/org_profile_permissions/table


GRANT DELETE ON "agent_db_profiles_public".org_profile_permissions TO authenticated;

