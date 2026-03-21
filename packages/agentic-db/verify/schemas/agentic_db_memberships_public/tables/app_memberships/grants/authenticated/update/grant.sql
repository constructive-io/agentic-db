-- Verify: schemas/agentic_db_memberships_public/tables/app_memberships/grants/authenticated/update/grant


SELECT verify_table_grant('agentic_db_memberships_public.app_memberships', 'update', 'authenticated');


