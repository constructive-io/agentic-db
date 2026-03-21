-- Verify: schemas/agentic_db_memberships_public/tables/org_chart_edge_grants/grants/authenticated/insert/grant


SELECT verify_table_grant('agentic_db_memberships_public.org_chart_edge_grants', 'insert', 'authenticated');


