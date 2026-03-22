-- Verify: schemas/agentic_db_app_public/tables/place_chunks/indexes/place_chunks_embedding_hnsw_idx


SELECT verify_index('agentic_db_app_public.place_chunks', 'place_chunks_embedding_hnsw_idx');


