-- Verify: schemas/agentic_db_app_public/tables/codebases_chunks/indexes/codebases_chunks_created_at_idx


SELECT verify_index('agentic_db_app_public.codebases_chunks', 'codebases_chunks_created_at_idx');


