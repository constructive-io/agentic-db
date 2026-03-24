-- Verify: schemas/agentic_db_app_public/tables/tasks/indexes/tasks_agent_id_idx


SELECT verify_index('agentic_db_app_public.tasks', 'tasks_agent_id_idx');


