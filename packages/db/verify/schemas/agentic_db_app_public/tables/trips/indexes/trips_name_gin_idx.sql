-- Verify: schemas/agentic_db_app_public/tables/trips/indexes/trips_name_gin_idx


SELECT verify_index('agentic_db_app_public.trips', 'trips_name_gin_idx');


