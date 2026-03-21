-- Verify: schemas/agentic_db_app_public/tables/recipe_chunks/grants/authenticated/update/grant


SELECT verify_table_grant('agentic_db_app_public.recipe_chunks', 'update', 'authenticated');


