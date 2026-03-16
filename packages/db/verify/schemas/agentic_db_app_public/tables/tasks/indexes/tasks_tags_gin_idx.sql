-- Verify: schemas/agentic_db_app_public/tables/tasks/indexes/tasks_tags_gin_idx


SELECT verify_index('agentic_db_app_public.tasks', 'tasks_tags_gin_idx');


