-- Verify: schemas/agentic_db_memberships_public/tables/app_admin_grants/grants/authenticated/insert/grant


SELECT verify_table_grant('agentic_db_memberships_public.app_admin_grants', 'insert', 'authenticated');


