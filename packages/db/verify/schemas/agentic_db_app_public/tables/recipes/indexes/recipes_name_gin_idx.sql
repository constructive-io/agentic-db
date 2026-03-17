-- Verify: schemas/agentic_db_app_public/tables/recipes/indexes/recipes_name_gin_idx


SELECT verify_index('agentic_db_app_public.recipes', 'recipes_name_gin_idx');


