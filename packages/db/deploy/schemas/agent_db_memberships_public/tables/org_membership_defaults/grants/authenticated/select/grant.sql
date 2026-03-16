-- Deploy: schemas/agent_db_memberships_public/tables/org_membership_defaults/grants/authenticated/select/grant
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_membership_defaults/table


GRANT SELECT ON "agent_db_memberships_public".org_membership_defaults TO authenticated;

