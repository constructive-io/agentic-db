-- Verify: schemas/agentic_db_app_public/tables/trips_chunks/indexes/trips_chunks_created_at_idx


SELECT verify_index('agentic_db_app_public.trips_chunks', 'trips_chunks_created_at_idx');


