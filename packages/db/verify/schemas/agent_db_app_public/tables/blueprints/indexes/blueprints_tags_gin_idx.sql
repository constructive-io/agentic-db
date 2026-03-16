-- Verify: schemas/agent_db_app_public/tables/blueprints/indexes/blueprints_tags_gin_idx


SELECT verify_index('agent_db_app_public.blueprints', 'blueprints_tags_gin_idx');


