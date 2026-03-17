-- Verify: schemas/agentic_db_permissions_public/tables/app_permissions/grants/authenticated/insert/grant


SELECT verify_table_grant('agentic_db_permissions_public.app_permissions', 'insert', 'authenticated');


