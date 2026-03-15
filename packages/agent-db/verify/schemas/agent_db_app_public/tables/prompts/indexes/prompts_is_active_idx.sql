-- Verify: schemas/agent_db_app_public/tables/prompts/indexes/prompts_is_active_idx


SELECT verify_index('agent_db_app_public.prompts', 'prompts_is_active_idx');


