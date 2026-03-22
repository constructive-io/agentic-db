-- Verify: schemas/agentic_db_app_public/tables/agent_task_chunks/indexes/agent_task_chunks_embedding_hnsw_idx


SELECT verify_index('agentic_db_app_public.agent_task_chunks', 'agent_task_chunks_embedding_hnsw_idx');


