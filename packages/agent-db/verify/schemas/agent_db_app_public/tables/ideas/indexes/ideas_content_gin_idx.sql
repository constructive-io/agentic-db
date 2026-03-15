-- Verify: schemas/agent_db_app_public/tables/ideas/indexes/ideas_content_gin_idx


SELECT verify_index('agent_db_app_public.ideas', 'ideas_content_gin_idx');


