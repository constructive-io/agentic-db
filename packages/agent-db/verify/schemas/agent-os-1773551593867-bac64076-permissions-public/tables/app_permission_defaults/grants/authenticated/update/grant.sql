-- Verify: schemas/agent-os-1773551593867-bac64076-permissions-public/tables/app_permission_defaults/grants/authenticated/update/grant


SELECT verify_table_grant('agent-os-1773551593867-bac64076-permissions-public.app_permission_defaults', 'update', 'authenticated');


