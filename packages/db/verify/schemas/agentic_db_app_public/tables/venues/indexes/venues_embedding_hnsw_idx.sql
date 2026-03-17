-- Verify: schemas/agentic_db_app_public/tables/venues/indexes/venues_embedding_hnsw_idx


SELECT verify_index('agentic_db_app_public.venues', 'venues_embedding_hnsw_idx');


