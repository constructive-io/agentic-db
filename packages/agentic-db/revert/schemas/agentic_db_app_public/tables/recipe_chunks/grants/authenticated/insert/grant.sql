-- Revert: schemas/agentic_db_app_public/tables/recipe_chunks/grants/authenticated/insert/grant


REVOKE INSERT ON agentic_db_app_public.recipe_chunks FROM authenticated;


