-- Verify: schemas/agent-os-1773546821914-39f1cb9b-limits-public/tables/org_limits/grants/authenticated/delete/grant


SELECT verify_table_grant('agent-os-1773546821914-39f1cb9b-limits-public.org_limits', 'delete', 'authenticated');


