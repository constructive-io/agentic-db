-- Verify: schemas/agentic_db_app_public/tables/email_threads/indexes/email_threads_embedding_hnsw_idx


SELECT verify_index('agentic_db_app_public.email_threads', 'email_threads_embedding_hnsw_idx');


