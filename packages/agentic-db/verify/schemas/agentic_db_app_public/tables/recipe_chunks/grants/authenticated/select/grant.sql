-- Verify: schemas/agentic_db_app_public/tables/recipe_chunks/grants/authenticated/select/grant


SELECT verify_table_grant('agentic_db_app_public.recipe_chunks', 'select', 'authenticated');


