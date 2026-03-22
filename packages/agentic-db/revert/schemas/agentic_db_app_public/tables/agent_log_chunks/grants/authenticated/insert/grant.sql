-- Revert: schemas/agentic_db_app_public/tables/agent_log_chunks/grants/authenticated/insert/grant


REVOKE INSERT ON agentic_db_app_public.agent_log_chunks FROM authenticated;


