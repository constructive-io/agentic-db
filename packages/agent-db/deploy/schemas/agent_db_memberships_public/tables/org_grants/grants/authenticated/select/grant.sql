-- Deploy: schemas/agent_db_memberships_public/tables/org_grants/grants/authenticated/select/grant
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_grants/table


GRANT SELECT ON agent_db_memberships_public.org_grants TO authenticated;

