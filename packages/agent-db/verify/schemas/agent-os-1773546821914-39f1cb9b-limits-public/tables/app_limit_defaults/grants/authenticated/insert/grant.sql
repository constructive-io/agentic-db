-- Verify: schemas/agent-os-1773546821914-39f1cb9b-limits-public/tables/app_limit_defaults/grants/authenticated/insert/grant


SELECT verify_table_grant('agent-os-1773546821914-39f1cb9b-limits-public.app_limit_defaults', 'insert', 'authenticated');


