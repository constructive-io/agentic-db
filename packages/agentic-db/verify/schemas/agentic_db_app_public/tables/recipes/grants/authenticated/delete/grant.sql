-- Verify: schemas/agentic_db_app_public/tables/recipes/grants/authenticated/delete/grant


SELECT verify_table_grant('agentic_db_app_public.recipes', 'delete', 'authenticated');


