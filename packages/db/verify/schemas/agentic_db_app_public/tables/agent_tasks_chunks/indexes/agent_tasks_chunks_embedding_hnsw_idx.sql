-- Verify: schemas/agentic_db_app_public/tables/agent_tasks_chunks/indexes/agent_tasks_chunks_embedding_hnsw_idx


SELECT verify_index('agentic_db_app_public.agent_tasks_chunks', 'agent_tasks_chunks_embedding_hnsw_idx');


