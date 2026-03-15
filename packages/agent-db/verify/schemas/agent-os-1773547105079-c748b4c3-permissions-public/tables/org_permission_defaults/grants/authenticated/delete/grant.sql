-- Verify: schemas/agent-os-1773547105079-c748b4c3-permissions-public/tables/org_permission_defaults/grants/authenticated/delete/grant


SELECT verify_table_grant('agent-os-1773547105079-c748b4c3-permissions-public.org_permission_defaults', 'delete', 'authenticated');


