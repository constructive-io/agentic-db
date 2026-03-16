-- Verify: schemas/agentic_db_permissions_public/tables/app_permissions/grants/authenticated/update/grant


SELECT verify_table_grant('agentic_db_permissions_public.app_permissions', 'update', 'authenticated');


