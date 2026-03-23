-- Revert: schemas/agentic_db_app_public/tables/tool_executions/grants/authenticated/select/grant


REVOKE SELECT ON "agentic_db_app_public".tool_executions FROM authenticated;


