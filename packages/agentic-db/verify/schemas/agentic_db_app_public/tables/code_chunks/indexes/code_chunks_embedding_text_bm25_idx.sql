-- Verify: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_embedding_text_bm25_idx


SELECT verify_index('agentic_db_app_public.code_chunks', 'code_chunks_embedding_text_bm25_idx');


