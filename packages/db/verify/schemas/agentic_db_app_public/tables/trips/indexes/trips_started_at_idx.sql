-- Verify: schemas/agentic_db_app_public/tables/trips/indexes/trips_started_at_idx


SELECT verify_index('agentic_db_app_public.trips', 'trips_started_at_idx');


