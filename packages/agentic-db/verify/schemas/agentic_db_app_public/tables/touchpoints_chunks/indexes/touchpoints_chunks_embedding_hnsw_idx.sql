-- Verify: schemas/agentic_db_app_public/tables/touchpoints_chunks/indexes/touchpoints_chunks_embedding_hnsw_idx


SELECT verify_index('agentic_db_app_public.touchpoints_chunks', 'touchpoints_chunks_embedding_hnsw_idx');


