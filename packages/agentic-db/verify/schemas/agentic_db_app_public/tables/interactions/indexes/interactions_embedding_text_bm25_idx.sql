-- Verify: schemas/agentic_db_app_public/tables/interactions/indexes/interactions_embedding_text_bm25_idx


SELECT verify_index('agentic_db_app_public.interactions', 'interactions_embedding_text_bm25_idx');


