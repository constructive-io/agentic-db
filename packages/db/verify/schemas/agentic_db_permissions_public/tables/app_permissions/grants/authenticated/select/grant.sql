-- Verify: schemas/agentic_db_permissions_public/tables/app_permissions/grants/authenticated/select/grant


SELECT verify_table_grant('agentic_db_permissions_public.app_permissions', 'select', 'authenticated');


