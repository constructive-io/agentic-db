-- Verify: schemas/agent-os-1773546821914-39f1cb9b-permissions-public/tables/org_permission_defaults/grants/authenticated/update/grant


SELECT verify_table_grant('agent-os-1773546821914-39f1cb9b-permissions-public.org_permission_defaults', 'update', 'authenticated');


