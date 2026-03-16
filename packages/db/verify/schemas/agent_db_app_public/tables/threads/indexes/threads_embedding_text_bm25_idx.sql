-- Verify: schemas/agent_db_app_public/tables/threads/indexes/threads_embedding_text_bm25_idx


SELECT verify_index('agent_db_app_public.threads', 'threads_embedding_text_bm25_idx');


