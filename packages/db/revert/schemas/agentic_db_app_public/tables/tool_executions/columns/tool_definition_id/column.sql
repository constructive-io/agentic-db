-- Revert: schemas/agentic_db_app_public/tables/tool_executions/columns/tool_definition_id/column


ALTER TABLE "agentic_db_app_public".tool_executions 
  DROP COLUMN tool_definition_id RESTRICT;


