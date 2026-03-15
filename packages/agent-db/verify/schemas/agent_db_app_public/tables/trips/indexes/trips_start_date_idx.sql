-- Verify: schemas/agent_db_app_public/tables/trips/indexes/trips_start_date_idx


SELECT verify_index('agent_db_app_public.trips', 'trips_start_date_idx');


