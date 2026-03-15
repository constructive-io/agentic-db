-- Verify: schemas/agent_db_app_public/tables/workflows/indexes/workflows_name_gin_idx


SELECT verify_index('agent_db_app_public.workflows', 'workflows_name_gin_idx');


