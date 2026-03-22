-- Verify: schemas/agentic_db_app_public/tables/runtime_log_chunks/indexes/runtime_log_chunks_embedding_text_bm25_idx


SELECT verify_index('agentic_db_app_public.runtime_log_chunks', 'runtime_log_chunks_embedding_text_bm25_idx');


