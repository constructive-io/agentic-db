-- Verify: schemas/agentic_db_app_public/tables/memories/indexes/memories_last_accessed_at_idx


SELECT verify_index('agentic_db_app_public.memories', 'memories_last_accessed_at_idx');


