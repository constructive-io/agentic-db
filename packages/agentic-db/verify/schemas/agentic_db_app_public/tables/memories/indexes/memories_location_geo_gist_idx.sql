-- Verify: schemas/agentic_db_app_public/tables/memories/indexes/memories_location_geo_gist_idx


SELECT verify_index('agentic_db_app_public.memories', 'memories_location_geo_gist_idx');


