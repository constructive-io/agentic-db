-- Deploy: schemas/agent_db_memberships_public/tables/org_grants/grants/authenticated/insert/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_grants/table


GRANT INSERT ON "agent_db_memberships_public".org_grants TO authenticated;

