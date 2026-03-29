-- Verify: schemas/agentic_db_app_public/tables/venues_chunks/indexes/venues_chunks_embedding_hnsw_idx


SELECT verify_index('agentic_db_app_public.venues_chunks', 'venues_chunks_embedding_hnsw_idx');


