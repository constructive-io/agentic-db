-- Verify: schemas/agentic_db_app_public/tables/lists/grants/authenticated/update/grant


SELECT verify_table_grant('agentic_db_app_public.lists', 'update', 'authenticated');


