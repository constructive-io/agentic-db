-- Verify: schemas/agentic_db_app_public/tables/trips/indexes/trips_location_gist_idx


SELECT verify_index('agentic_db_app_public.trips', 'trips_location_gist_idx');


