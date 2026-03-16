-- Verify: schemas/agent_db_app_public/tables/blueprints/indexes/blueprints_title_gin_idx


SELECT verify_index('agent_db_app_public.blueprints', 'blueprints_title_gin_idx');


