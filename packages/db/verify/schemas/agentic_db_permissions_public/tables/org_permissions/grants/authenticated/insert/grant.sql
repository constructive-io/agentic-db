-- Verify: schemas/agentic_db_permissions_public/tables/org_permissions/grants/authenticated/insert/grant


SELECT verify_table_grant('agentic_db_permissions_public.org_permissions', 'insert', 'authenticated');


