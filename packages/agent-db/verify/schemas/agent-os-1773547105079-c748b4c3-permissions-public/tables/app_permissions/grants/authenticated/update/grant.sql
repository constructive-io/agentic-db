-- Verify: schemas/agent-os-1773547105079-c748b4c3-permissions-public/tables/app_permissions/grants/authenticated/update/grant


SELECT verify_table_grant('agent-os-1773547105079-c748b4c3-permissions-public.app_permissions', 'update', 'authenticated');


