-- Verify: schemas/agent_db_app_public/tables/venues/indexes/venues_is_favorite_idx


SELECT verify_index('agent_db_app_public.venues', 'venues_is_favorite_idx');


