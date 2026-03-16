-- Verify: schemas/agent_db_app_public/tables/memories/indexes/memories_embedding_text_bm25_idx


SELECT verify_index('agent_db_app_public.memories', 'memories_embedding_text_bm25_idx');


