-- Verify: schemas/agent_db_permissions_public/tables/org_permission_defaults/grants/authenticated/select/grant


SELECT verify_table_grant('agent_db_permissions_public.org_permission_defaults', 'select', 'authenticated');


