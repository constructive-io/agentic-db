-- Verify: schemas/agentic_db_app_public/tables/email_threads_chunks/indexes/email_threads_chunks_embedding_hnsw_idx


SELECT verify_index('agentic_db_app_public.email_threads_chunks', 'email_threads_chunks_embedding_hnsw_idx');


