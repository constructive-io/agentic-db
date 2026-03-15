-- Verify: schemas/agent_db_app_public/tables/tasks/indexes/tasks_status_idx


SELECT verify_index('agent_db_app_public.tasks', 'tasks_status_idx');


