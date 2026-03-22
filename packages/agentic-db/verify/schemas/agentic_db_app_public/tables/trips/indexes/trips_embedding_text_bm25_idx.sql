-- Verify: schemas/agentic_db_app_public/tables/trips/indexes/trips_embedding_text_bm25_idx


SELECT verify_index('agentic_db_app_public.trips', 'trips_embedding_text_bm25_idx');


