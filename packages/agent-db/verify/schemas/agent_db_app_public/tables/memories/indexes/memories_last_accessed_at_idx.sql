-- Verify: schemas/agent_db_app_public/tables/memories/indexes/memories_last_accessed_at_idx


SELECT verify_index('agent_db_app_public.memories', 'memories_last_accessed_at_idx');


