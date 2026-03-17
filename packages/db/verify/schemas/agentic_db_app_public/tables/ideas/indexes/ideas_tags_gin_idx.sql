-- Verify: schemas/agentic_db_app_public/tables/ideas/indexes/ideas_tags_gin_idx


SELECT verify_index('agentic_db_app_public.ideas', 'ideas_tags_gin_idx');


