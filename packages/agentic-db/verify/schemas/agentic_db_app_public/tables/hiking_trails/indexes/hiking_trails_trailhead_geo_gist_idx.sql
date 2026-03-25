-- Verify: schemas/agentic_db_app_public/tables/hiking_trails/indexes/hiking_trails_trailhead_geo_gist_idx


SELECT verify_index('agentic_db_app_public.hiking_trails', 'hiking_trails_trailhead_geo_gist_idx');


