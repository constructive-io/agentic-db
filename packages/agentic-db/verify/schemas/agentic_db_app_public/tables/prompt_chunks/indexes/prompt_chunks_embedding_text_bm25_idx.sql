-- Verify: schemas/agentic_db_app_public/tables/prompt_chunks/indexes/prompt_chunks_embedding_text_bm25_idx


SELECT verify_index('agentic_db_app_public.prompt_chunks', 'prompt_chunks_embedding_text_bm25_idx');


