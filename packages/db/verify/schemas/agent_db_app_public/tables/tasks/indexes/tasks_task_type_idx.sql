-- Verify: schemas/agent_db_app_public/tables/tasks/indexes/tasks_task_type_idx


SELECT verify_index('agent_db_app_public.tasks', 'tasks_task_type_idx');


