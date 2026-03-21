-- Revert: schemas/agentic_db_app_public/tables/recipe_chunks/grants/authenticated/select/grant


REVOKE SELECT ON agentic_db_app_public.recipe_chunks FROM authenticated;


