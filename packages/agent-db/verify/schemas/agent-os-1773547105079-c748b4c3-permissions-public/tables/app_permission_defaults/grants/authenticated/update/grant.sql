-- Verify: schemas/agent-os-1773547105079-c748b4c3-permissions-public/tables/app_permission_defaults/grants/authenticated/update/grant


SELECT verify_table_grant('agent-os-1773547105079-c748b4c3-permissions-public.app_permission_defaults', 'update', 'authenticated');


