-- Revert: schemas/agentic_db_app_public/tables/tool_executions/columns/error/column


ALTER TABLE "agentic_db_app_public".tool_executions 
  DROP COLUMN error RESTRICT;


