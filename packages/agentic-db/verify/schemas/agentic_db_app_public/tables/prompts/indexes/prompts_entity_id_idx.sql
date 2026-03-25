-- Verify: schemas/agentic_db_app_public/tables/prompts/indexes/prompts_entity_id_idx


SELECT verify_index('agentic_db_app_public.prompts', 'prompts_entity_id_idx');


