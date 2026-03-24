-- Verify: schemas/agentic_db_app_public/tables/touchpoints/indexes/touchpoints_tags_gin_idx


SELECT verify_index('agentic_db_app_public.touchpoints', 'touchpoints_tags_gin_idx');


