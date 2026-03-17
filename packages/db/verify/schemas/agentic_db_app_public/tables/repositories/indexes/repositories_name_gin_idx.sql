-- Verify: schemas/agentic_db_app_public/tables/repositories/indexes/repositories_name_gin_idx


SELECT verify_index('agentic_db_app_public.repositories', 'repositories_name_gin_idx');


