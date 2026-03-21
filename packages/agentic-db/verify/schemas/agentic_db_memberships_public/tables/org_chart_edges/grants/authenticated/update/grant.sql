-- Verify: schemas/agentic_db_memberships_public/tables/org_chart_edges/grants/authenticated/update/grant


SELECT verify_table_grant('agentic_db_memberships_public.org_chart_edges', 'update', 'authenticated');


