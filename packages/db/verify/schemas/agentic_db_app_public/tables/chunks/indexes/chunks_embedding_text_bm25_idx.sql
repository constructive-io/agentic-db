-- Verify: schemas/agentic_db_app_public/tables/chunks/indexes/chunks_embedding_text_bm25_idx


SELECT verify_index('agentic_db_app_public.chunks', 'chunks_embedding_text_bm25_idx');


