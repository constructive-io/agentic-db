-- Verify: schemas/agentic_db_app_public/tables/prompt_chunks/indexes/prompt_chunks_prompt_id_idx


SELECT verify_index('agentic_db_app_public.prompt_chunks', 'prompt_chunks_prompt_id_idx');


