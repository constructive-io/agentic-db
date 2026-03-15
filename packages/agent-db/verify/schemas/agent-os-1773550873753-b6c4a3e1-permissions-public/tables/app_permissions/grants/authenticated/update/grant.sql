-- Verify: schemas/agent-os-1773550873753-b6c4a3e1-permissions-public/tables/app_permissions/grants/authenticated/update/grant


SELECT verify_table_grant('agent-os-1773550873753-b6c4a3e1-permissions-public.app_permissions', 'update', 'authenticated');


