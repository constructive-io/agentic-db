-- Verify: schemas/agentic_db_app_public/tables/agent_tasks/indexes/agent_tasks_status_idx


SELECT verify_index('agentic_db_app_public.agent_tasks', 'agent_tasks_status_idx');


