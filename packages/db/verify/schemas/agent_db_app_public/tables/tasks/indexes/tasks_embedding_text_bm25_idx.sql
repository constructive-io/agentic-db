-- Verify: schemas/agent_db_app_public/tables/tasks/indexes/tasks_embedding_text_bm25_idx


SELECT verify_index('agent_db_app_public.tasks', 'tasks_embedding_text_bm25_idx');


