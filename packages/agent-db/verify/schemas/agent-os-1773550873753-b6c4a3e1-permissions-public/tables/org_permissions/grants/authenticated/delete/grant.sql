-- Verify: schemas/agent-os-1773550873753-b6c4a3e1-permissions-public/tables/org_permissions/grants/authenticated/delete/grant


SELECT verify_table_grant('agent-os-1773550873753-b6c4a3e1-permissions-public.org_permissions', 'delete', 'authenticated');


