-- Verify: schemas/agent-os-1773550873753-b6c4a3e1-permissions-public/tables/app_permission_defaults/grants/authenticated/insert/grant


SELECT verify_table_grant('agent-os-1773550873753-b6c4a3e1-permissions-public.app_permission_defaults', 'insert', 'authenticated');


