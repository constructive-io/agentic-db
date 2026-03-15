-- Verify: schemas/agent_db_app_public/tables/threads/indexes/threads_status_idx


SELECT verify_index('agent_db_app_public.threads', 'threads_status_idx');


