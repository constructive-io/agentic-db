-- Verify: schemas/agentic_db_app_public/tables/interaction_chunks/indexes/interaction_chunks_embedding_text_bm25_idx


SELECT verify_index('agentic_db_app_public.interaction_chunks', 'interaction_chunks_embedding_text_bm25_idx');


