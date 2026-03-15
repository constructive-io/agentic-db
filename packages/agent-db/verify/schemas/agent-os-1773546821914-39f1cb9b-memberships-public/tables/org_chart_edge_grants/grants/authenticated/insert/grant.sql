-- Verify: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_chart_edge_grants/grants/authenticated/insert/grant


SELECT verify_table_grant('agent-os-1773546821914-39f1cb9b-memberships-public.org_chart_edge_grants', 'insert', 'authenticated');


