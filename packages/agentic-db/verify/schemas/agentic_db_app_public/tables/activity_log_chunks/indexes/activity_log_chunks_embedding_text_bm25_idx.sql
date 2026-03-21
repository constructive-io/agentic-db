-- Verify: schemas/agentic_db_app_public/tables/activity_log_chunks/indexes/activity_log_chunks_embedding_text_bm25_idx


SELECT verify_index('agentic_db_app_public.activity_log_chunks', 'activity_log_chunks_embedding_text_bm25_idx');


