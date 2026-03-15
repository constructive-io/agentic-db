-- Verify: schemas/agent_db_app_public/tables/lists/indexes/lists_tags_gin_idx


SELECT verify_index('agent_db_app_public.lists', 'lists_tags_gin_idx');


