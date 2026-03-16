-- Verify: schemas/agentic_db_app_public/tables/recipes/grants/authenticated/insert/grant


SELECT verify_table_grant('agentic_db_app_public.recipes', 'insert', 'authenticated');


