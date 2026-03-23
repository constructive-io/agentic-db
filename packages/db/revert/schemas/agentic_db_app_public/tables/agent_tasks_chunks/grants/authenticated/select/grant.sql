-- Revert: schemas/agentic_db_app_public/tables/agent_tasks_chunks/grants/authenticated/select/grant


REVOKE SELECT ON "agentic_db_app_public".agent_tasks_chunks FROM authenticated;


