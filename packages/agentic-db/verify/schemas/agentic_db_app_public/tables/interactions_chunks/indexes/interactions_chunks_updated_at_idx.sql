-- Verify: schemas/agentic_db_app_public/tables/interactions_chunks/indexes/interactions_chunks_updated_at_idx


SELECT verify_index('agentic_db_app_public.interactions_chunks', 'interactions_chunks_updated_at_idx');


