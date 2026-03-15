-- Verify: schemas/agent-os-1773546821914-39f1cb9b-permissions-public/tables/app_permissions/grants/authenticated/update/grant


SELECT verify_table_grant('agent-os-1773546821914-39f1cb9b-permissions-public.app_permissions', 'update', 'authenticated');


