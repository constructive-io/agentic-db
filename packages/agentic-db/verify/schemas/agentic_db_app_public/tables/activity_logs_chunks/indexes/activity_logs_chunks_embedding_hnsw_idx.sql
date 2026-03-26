-- Verify: schemas/agentic_db_app_public/tables/activity_logs_chunks/indexes/activity_logs_chunks_embedding_hnsw_idx


SELECT verify_index('agentic_db_app_public.activity_logs_chunks', 'activity_logs_chunks_embedding_hnsw_idx');


