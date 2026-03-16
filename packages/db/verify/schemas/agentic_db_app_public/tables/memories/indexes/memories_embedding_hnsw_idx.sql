-- Verify: schemas/agentic_db_app_public/tables/memories/indexes/memories_embedding_hnsw_idx


SELECT verify_index('agentic_db_app_public.memories', 'memories_embedding_hnsw_idx');


