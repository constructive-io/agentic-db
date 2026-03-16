-- Verify: schemas/agent_db_app_public/tables/agent_prompts/indexes/agent_prompts_prompt_id_idx


SELECT verify_index('agent_db_app_public.agent_prompts', 'agent_prompts_prompt_id_idx');


