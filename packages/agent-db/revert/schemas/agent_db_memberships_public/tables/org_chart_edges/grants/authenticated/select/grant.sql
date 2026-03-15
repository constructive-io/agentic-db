-- Revert: schemas/agent_db_memberships_public/tables/org_chart_edges/grants/authenticated/select/grant


REVOKE SELECT ON agent_db_memberships_public.org_chart_edges FROM authenticated;


