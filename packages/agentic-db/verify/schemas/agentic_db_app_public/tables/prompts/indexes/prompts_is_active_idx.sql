-- Verify: schemas/agentic_db_app_public/tables/prompts/indexes/prompts_is_active_idx


SELECT verify_index('agentic_db_app_public.prompts', 'prompts_is_active_idx');


