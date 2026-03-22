-- Verify: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_language_idx


SELECT verify_index('agentic_db_app_public.code_chunks', 'code_chunks_language_idx');


