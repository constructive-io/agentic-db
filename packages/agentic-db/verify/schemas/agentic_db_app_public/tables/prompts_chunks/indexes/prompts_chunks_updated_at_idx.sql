-- Verify: schemas/agentic_db_app_public/tables/prompts_chunks/indexes/prompts_chunks_updated_at_idx


SELECT verify_index('agentic_db_app_public.prompts_chunks', 'prompts_chunks_updated_at_idx');


