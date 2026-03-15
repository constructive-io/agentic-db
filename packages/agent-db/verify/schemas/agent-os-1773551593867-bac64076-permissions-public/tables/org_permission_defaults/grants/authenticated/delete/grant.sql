-- Verify: schemas/agent-os-1773551593867-bac64076-permissions-public/tables/org_permission_defaults/grants/authenticated/delete/grant


SELECT verify_table_grant('agent-os-1773551593867-bac64076-permissions-public.org_permission_defaults', 'delete', 'authenticated');


