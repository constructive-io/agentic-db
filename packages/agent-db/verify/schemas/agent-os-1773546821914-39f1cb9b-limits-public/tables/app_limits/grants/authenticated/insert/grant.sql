-- Verify: schemas/agent-os-1773546821914-39f1cb9b-limits-public/tables/app_limits/grants/authenticated/insert/grant


SELECT verify_table_grant('agent-os-1773546821914-39f1cb9b-limits-public.app_limits', 'insert', 'authenticated');


