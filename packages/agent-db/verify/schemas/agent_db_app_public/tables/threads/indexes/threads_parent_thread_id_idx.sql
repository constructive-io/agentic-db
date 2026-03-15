-- Verify: schemas/agent_db_app_public/tables/threads/indexes/threads_parent_thread_id_idx


SELECT verify_index('agent_db_app_public.threads', 'threads_parent_thread_id_idx');


