-- Verify: schemas/agentic_db_app_public/tables/session_chunks/indexes/session_chunks_embedding_text_bm25_idx


SELECT verify_index('agentic_db_app_public.session_chunks', 'session_chunks_embedding_text_bm25_idx');


