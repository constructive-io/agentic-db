-- Verify: schemas/agent_db_memberships_public/tables/org_chart_edges/grants/authenticated/delete/grant


SELECT verify_table_grant('agent_db_memberships_public.org_chart_edges', 'delete', 'authenticated');


