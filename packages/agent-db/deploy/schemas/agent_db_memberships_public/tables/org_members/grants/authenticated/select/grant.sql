-- Deploy: schemas/agent_db_memberships_public/tables/org_members/grants/authenticated/select/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_members/table


GRANT SELECT ON "agent_db_memberships_public".org_members TO authenticated;

