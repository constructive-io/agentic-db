-- Verify: schemas/agent-os-1773550873753-b6c4a3e1-limits-public/tables/app_limits/grants/authenticated/delete/grant


SELECT verify_table_grant('agent-os-1773550873753-b6c4a3e1-limits-public.app_limits', 'delete', 'authenticated');


