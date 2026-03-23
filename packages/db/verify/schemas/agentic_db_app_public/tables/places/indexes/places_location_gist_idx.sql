-- Verify: schemas/agentic_db_app_public/tables/places/indexes/places_location_gist_idx


SELECT verify_index('agentic_db_app_public.places', 'places_location_gist_idx');


