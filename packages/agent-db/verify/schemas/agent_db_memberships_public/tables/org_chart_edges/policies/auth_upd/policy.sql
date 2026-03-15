-- Verify: schemas/agent_db_memberships_public/tables/org_chart_edges/policies/auth_upd/policy


SELECT verify_policy('auth_upd', 'agent_db_memberships_public.org_chart_edges');


