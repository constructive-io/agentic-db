-- Verify: schemas/agent_db_app_public/tables/chunks/indexes/chunks_embedding_hnsw_idx


SELECT verify_index('agent_db_app_public.chunks', 'chunks_embedding_hnsw_idx');


