-- Verify: schemas/agentic_db_app_public/tables/prompt_chunks/indexes/prompt_chunks_chunk_index_idx


SELECT verify_index('agentic_db_app_public.prompt_chunks', 'prompt_chunks_chunk_index_idx');


