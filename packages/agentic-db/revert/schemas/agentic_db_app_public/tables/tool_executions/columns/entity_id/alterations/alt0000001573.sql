-- Revert: schemas/agentic_db_app_public/tables/tool_executions/columns/entity_id/alterations/alt0000001573


ALTER TABLE "agentic_db_app_public".tool_executions 
  ALTER COLUMN entity_id DROP NOT NULL;


