-- Verify: schemas/agent_db_app_public/tables/agents/indexes/agents_embedding_hnsw_idx


SELECT verify_index('agent_db_app_public.agents', 'agents_embedding_hnsw_idx');


