-- Verify: schemas/agentic_db_app_public/tables/interactions/indexes/interactions_tags_gin_idx


SELECT verify_index('agentic_db_app_public.interactions', 'interactions_tags_gin_idx');


