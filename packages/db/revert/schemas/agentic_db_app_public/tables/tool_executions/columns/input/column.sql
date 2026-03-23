-- Revert: schemas/agentic_db_app_public/tables/tool_executions/columns/input/column


ALTER TABLE "agentic_db_app_public".tool_executions 
  DROP COLUMN input RESTRICT;


