-- Verify: schemas/agentic_db_app_public/tables/agent_prompts/indexes/agent_prompts_agent_id_idx


SELECT verify_index('agentic_db_app_public.agent_prompts', 'agent_prompts_agent_id_idx');


