-- Verify: schemas/agentic_db_permissions_public/tables/org_permission_defaults/grants/authenticated/insert/grant


SELECT verify_table_grant('agentic_db_permissions_public.org_permission_defaults', 'insert', 'authenticated');


