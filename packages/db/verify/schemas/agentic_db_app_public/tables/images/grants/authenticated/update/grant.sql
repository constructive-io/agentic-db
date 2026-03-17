-- Verify: schemas/agentic_db_app_public/tables/images/grants/authenticated/update/grant


SELECT verify_table_grant('agentic_db_app_public.images', 'update', 'authenticated');


