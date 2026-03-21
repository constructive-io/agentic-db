-- Verify: schemas/agentic_db_app_public/tables/task_chunks/indexes/task_chunks_embedding_hnsw_idx


SELECT verify_index('agentic_db_app_public.task_chunks', 'task_chunks_embedding_hnsw_idx');


