-- Verify: schemas/agentic_db_app_public/tables/prompts/indexes/prompts_content_bm25_idx


SELECT verify_index('agentic_db_app_public.prompts', 'prompts_content_bm25_idx');


