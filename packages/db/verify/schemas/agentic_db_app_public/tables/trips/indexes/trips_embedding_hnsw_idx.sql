-- Verify: schemas/agentic_db_app_public/tables/trips/indexes/trips_embedding_hnsw_idx


SELECT verify_index('agentic_db_app_public.trips', 'trips_embedding_hnsw_idx');


