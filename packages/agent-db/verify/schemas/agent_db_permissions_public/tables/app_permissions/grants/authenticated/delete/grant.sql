-- Verify: schemas/agent_db_permissions_public/tables/app_permissions/grants/authenticated/delete/grant


SELECT verify_table_grant('agent_db_permissions_public.app_permissions', 'delete', 'authenticated');


