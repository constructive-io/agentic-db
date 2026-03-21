-- Verify: schemas/agentic_db_app_public/tables/memory_chunks/indexes/memory_chunks_embedding_hnsw_idx


SELECT verify_index('agentic_db_app_public.memory_chunks', 'memory_chunks_embedding_hnsw_idx');


