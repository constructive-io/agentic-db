-- Verify: schemas/agent-os-1773550873753-b6c4a3e1-limits-public/tables/app_limit_defaults/grants/authenticated/delete/grant


SELECT verify_table_grant('agent-os-1773550873753-b6c4a3e1-limits-public.app_limit_defaults', 'delete', 'authenticated');


