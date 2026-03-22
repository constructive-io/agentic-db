-- Verify: schemas/agentic_db_app_public/tables/agent_logs/indexes/agent_logs_embedding_hnsw_idx


SELECT verify_index('agentic_db_app_public.agent_logs', 'agent_logs_embedding_hnsw_idx');


