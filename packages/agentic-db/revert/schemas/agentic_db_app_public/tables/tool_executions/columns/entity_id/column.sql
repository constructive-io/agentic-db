-- Revert: schemas/agentic_db_app_public/tables/tool_executions/columns/entity_id/column


ALTER TABLE "agentic_db_app_public".tool_executions 
  DROP COLUMN entity_id RESTRICT;


