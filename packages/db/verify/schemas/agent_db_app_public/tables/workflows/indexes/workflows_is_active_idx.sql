-- Verify: schemas/agent_db_app_public/tables/workflows/indexes/workflows_is_active_idx


SELECT verify_index('agent_db_app_public.workflows', 'workflows_is_active_idx');


