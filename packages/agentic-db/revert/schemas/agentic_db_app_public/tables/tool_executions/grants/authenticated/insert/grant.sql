-- Revert: schemas/agentic_db_app_public/tables/tool_executions/grants/authenticated/insert/grant


REVOKE INSERT ON "agentic_db_app_public".tool_executions FROM authenticated;


