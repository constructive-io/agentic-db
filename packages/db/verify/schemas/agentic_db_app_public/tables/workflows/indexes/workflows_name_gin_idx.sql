-- Verify: schemas/agentic_db_app_public/tables/workflows/indexes/workflows_name_gin_idx


SELECT verify_index('agentic_db_app_public.workflows', 'workflows_name_gin_idx');


