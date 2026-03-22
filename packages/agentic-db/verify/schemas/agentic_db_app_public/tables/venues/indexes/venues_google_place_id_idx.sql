-- Verify: schemas/agentic_db_app_public/tables/venues/indexes/venues_google_place_id_idx


SELECT verify_index('agentic_db_app_public.venues', 'venues_google_place_id_idx');


