-- Revert: schemas/agentic_db_app_public/tables/agent_task_chunks/grants/authenticated/delete/grant


REVOKE DELETE ON agentic_db_app_public.agent_task_chunks FROM authenticated;


