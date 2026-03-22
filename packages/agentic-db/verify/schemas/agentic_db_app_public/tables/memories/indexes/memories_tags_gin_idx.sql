-- Verify: schemas/agentic_db_app_public/tables/memories/indexes/memories_tags_gin_idx


SELECT verify_index('agentic_db_app_public.memories', 'memories_tags_gin_idx');


