-- Verify: schemas/agent_db_app_public/tables/recipes/indexes/recipes_ingredients_gin_idx


SELECT verify_index('agent_db_app_public.recipes', 'recipes_ingredients_gin_idx');


