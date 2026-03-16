-- Verify: schemas/agent_db_app_public/tables/tasks/indexes/tasks_assigned_agent_id_idx


SELECT verify_index('agent_db_app_public.tasks', 'tasks_assigned_agent_id_idx');


