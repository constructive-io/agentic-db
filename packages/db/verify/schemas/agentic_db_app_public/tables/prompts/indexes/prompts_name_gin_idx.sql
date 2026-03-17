-- Verify: schemas/agentic_db_app_public/tables/prompts/indexes/prompts_name_gin_idx


SELECT verify_index('agentic_db_app_public.prompts', 'prompts_name_gin_idx');


