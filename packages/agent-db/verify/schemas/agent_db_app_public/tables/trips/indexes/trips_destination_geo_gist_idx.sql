-- Verify: schemas/agent_db_app_public/tables/trips/indexes/trips_destination_geo_gist_idx


SELECT verify_index('agent_db_app_public.trips', 'trips_destination_geo_gist_idx');


