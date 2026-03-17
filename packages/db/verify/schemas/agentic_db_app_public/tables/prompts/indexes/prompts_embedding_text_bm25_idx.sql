-- Verify: schemas/agentic_db_app_public/tables/prompts/indexes/prompts_embedding_text_bm25_idx


SELECT verify_index('agentic_db_app_public.prompts', 'prompts_embedding_text_bm25_idx');


