-- Verify: schemas/agent_db_app_public/tables/tags/indexes/tags_name_idx


SELECT verify_index('agent_db_app_public.tags', 'tags_name_idx');


