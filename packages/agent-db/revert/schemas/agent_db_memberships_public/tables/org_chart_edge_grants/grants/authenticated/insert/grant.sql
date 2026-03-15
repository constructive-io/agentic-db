-- Revert: schemas/agent_db_memberships_public/tables/org_chart_edge_grants/grants/authenticated/insert/grant


REVOKE INSERT ON "agent_db_memberships_public".org_chart_edge_grants FROM authenticated;


