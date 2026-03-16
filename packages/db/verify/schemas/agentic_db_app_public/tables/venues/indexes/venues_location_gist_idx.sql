-- Verify: schemas/agentic_db_app_public/tables/venues/indexes/venues_location_gist_idx


SELECT verify_index('agentic_db_app_public.venues', 'venues_location_gist_idx');


