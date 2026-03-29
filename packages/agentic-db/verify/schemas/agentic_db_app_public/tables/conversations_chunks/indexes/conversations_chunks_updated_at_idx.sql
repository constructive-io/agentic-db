-- Verify: schemas/agentic_db_app_public/tables/conversations_chunks/indexes/conversations_chunks_updated_at_idx


SELECT verify_index('agentic_db_app_public.conversations_chunks', 'conversations_chunks_updated_at_idx');


