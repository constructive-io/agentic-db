-- Verify: schemas/agent_db_app_public/tables/prompts/indexes/prompts_content_bm25_idx


SELECT verify_index('agent_db_app_public.prompts', 'prompts_content_bm25_idx');


