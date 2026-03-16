-- Verify: schemas/agent_db_app_public/tables/recipes/indexes/recipes_embedding_hnsw_idx


SELECT verify_index('agent_db_app_public.recipes', 'recipes_embedding_hnsw_idx');


