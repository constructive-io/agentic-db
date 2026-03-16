-- Verify: schemas/agent_db_permissions_public/tables/org_permission_defaults/grants/authenticated/delete/grant


SELECT verify_table_grant('agent_db_permissions_public.org_permission_defaults', 'delete', 'authenticated');


