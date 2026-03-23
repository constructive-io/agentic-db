-- Verify: schemas/agentic_db_app_public/tables/hiking_trails_chunks/indexes/hiking_trails_chunks_embedding_hnsw_idx


SELECT verify_index('agentic_db_app_public.hiking_trails_chunks', 'hiking_trails_chunks_embedding_hnsw_idx');


