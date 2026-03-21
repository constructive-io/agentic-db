-- Revert: schemas/agentic_db_app_public/tables/recipe_chunks/grants/authenticated/delete/grant


REVOKE DELETE ON agentic_db_app_public.recipe_chunks FROM authenticated;


