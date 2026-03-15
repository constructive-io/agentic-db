-- Deploy: schemas/agent_db_memberships_public/tables/org_membership_defaults/grants/authenticated/update/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_membership_defaults/table


GRANT UPDATE ON "agent_db_memberships_public".org_membership_defaults TO authenticated;

