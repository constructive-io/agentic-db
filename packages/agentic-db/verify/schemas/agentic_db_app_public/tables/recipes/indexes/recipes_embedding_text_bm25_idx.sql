-- Verify: schemas/agentic_db_app_public/tables/recipes/indexes/recipes_embedding_text_bm25_idx


SELECT verify_index('agentic_db_app_public.recipes', 'recipes_embedding_text_bm25_idx');


