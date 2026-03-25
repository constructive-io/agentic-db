-- Verify: schemas/agentic_db_app_public/tables/agent_prompts/indexes/agent_prompts_entity_id_idx


SELECT verify_index('agentic_db_app_public.agent_prompts', 'agent_prompts_entity_id_idx');


