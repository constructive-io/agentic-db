-- Verify: schemas/agentic_db_app_public/tables/tasks/indexes/tasks_parent_task_id_idx


SELECT verify_index('agentic_db_app_public.tasks', 'tasks_parent_task_id_idx');


