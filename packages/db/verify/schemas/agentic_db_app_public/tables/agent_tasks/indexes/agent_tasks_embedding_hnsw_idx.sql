-- Verify: schemas/agentic_db_app_public/tables/agent_tasks/indexes/agent_tasks_embedding_hnsw_idx


SELECT verify_index('agentic_db_app_public.agent_tasks', 'agent_tasks_embedding_hnsw_idx');


