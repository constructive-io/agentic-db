-- Verify: schemas/agentic_db_app_public/tables/events/indexes/events_location_geo_gist_idx


SELECT verify_index('agentic_db_app_public.events', 'events_location_geo_gist_idx');


