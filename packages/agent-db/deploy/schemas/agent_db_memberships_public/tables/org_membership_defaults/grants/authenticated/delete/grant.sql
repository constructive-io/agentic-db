-- Deploy: schemas/agent_db_memberships_public/tables/org_membership_defaults/grants/authenticated/delete/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_membership_defaults/table


GRANT DELETE ON agent_db_memberships_public.org_membership_defaults TO authenticated;

