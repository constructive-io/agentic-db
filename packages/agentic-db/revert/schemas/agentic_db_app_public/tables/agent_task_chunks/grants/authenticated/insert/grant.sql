-- Revert: schemas/agentic_db_app_public/tables/agent_task_chunks/grants/authenticated/insert/grant


REVOKE INSERT ON agentic_db_app_public.agent_task_chunks FROM authenticated;


