-- Deploy: schemas/agent_db_memberships_public/tables/org_memberships/grants/authenticated/select/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_memberships/table


GRANT SELECT ON "agent_db_memberships_public".org_memberships TO authenticated;

