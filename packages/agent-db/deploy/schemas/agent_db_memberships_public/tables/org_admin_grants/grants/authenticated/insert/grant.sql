-- Deploy: schemas/agent_db_memberships_public/tables/org_admin_grants/grants/authenticated/insert/grant
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_admin_grants/table


GRANT INSERT ON agent_db_memberships_public.org_admin_grants TO authenticated;

