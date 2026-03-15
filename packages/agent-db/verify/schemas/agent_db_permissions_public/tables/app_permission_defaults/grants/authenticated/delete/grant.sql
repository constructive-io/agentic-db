-- Verify: schemas/agent_db_permissions_public/tables/app_permission_defaults/grants/authenticated/delete/grant


SELECT verify_table_grant('agent_db_permissions_public.app_permission_defaults', 'delete', 'authenticated');


