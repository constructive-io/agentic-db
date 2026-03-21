-- Verify: schemas/agentic_db_app_public/tables/recipe_chunks/indexes/recipe_chunks_embedding_hnsw_idx


SELECT verify_index('agentic_db_app_public.recipe_chunks', 'recipe_chunks_embedding_hnsw_idx');


