-- Verify: schemas/agentic_db_app_public/tables/prompts/indexes/prompts_category_idx


SELECT verify_index('agentic_db_app_public.prompts', 'prompts_category_idx');


