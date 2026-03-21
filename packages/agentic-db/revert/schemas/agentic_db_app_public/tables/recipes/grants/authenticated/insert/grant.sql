-- Revert: schemas/agentic_db_app_public/tables/recipes/grants/authenticated/insert/grant


REVOKE INSERT ON agentic_db_app_public.recipes FROM authenticated;


