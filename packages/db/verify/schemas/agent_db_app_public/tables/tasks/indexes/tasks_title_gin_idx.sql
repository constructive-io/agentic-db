-- Verify: schemas/agent_db_app_public/tables/tasks/indexes/tasks_title_gin_idx


SELECT verify_index('agent_db_app_public.tasks', 'tasks_title_gin_idx');


