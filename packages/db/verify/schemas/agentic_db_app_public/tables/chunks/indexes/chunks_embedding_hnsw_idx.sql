-- Verify: schemas/agentic_db_app_public/tables/chunks/indexes/chunks_embedding_hnsw_idx


SELECT verify_index('agentic_db_app_public.chunks', 'chunks_embedding_hnsw_idx');


