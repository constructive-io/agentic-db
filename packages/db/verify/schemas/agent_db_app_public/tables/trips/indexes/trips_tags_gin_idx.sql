-- Verify: schemas/agent_db_app_public/tables/trips/indexes/trips_tags_gin_idx


SELECT verify_index('agent_db_app_public.trips', 'trips_tags_gin_idx');


