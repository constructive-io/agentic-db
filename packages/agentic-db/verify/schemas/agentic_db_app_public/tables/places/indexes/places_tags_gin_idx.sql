-- Verify: schemas/agentic_db_app_public/tables/places/indexes/places_tags_gin_idx


SELECT verify_index('agentic_db_app_public.places', 'places_tags_gin_idx');


