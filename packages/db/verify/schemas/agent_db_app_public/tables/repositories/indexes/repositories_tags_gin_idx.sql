-- Verify: schemas/agent_db_app_public/tables/repositories/indexes/repositories_tags_gin_idx


SELECT verify_index('agent_db_app_public.repositories', 'repositories_tags_gin_idx');


