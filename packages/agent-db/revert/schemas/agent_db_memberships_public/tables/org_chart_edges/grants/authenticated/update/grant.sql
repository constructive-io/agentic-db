-- Revert: schemas/agent_db_memberships_public/tables/org_chart_edges/grants/authenticated/update/grant


REVOKE UPDATE ON "agent_db_memberships_public".org_chart_edges FROM authenticated;


