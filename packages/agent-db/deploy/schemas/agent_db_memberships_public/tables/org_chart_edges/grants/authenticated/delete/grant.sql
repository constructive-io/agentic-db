-- Deploy: schemas/agent_db_memberships_public/tables/org_chart_edges/grants/authenticated/delete/grant
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_chart_edges/table


GRANT DELETE ON agent_db_memberships_public.org_chart_edges TO authenticated;

