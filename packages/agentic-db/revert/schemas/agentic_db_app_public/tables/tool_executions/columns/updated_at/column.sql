-- Revert: schemas/agentic_db_app_public/tables/tool_executions/columns/updated_at/column


ALTER TABLE agentic_db_app_public.tool_executions 
  DROP COLUMN updated_at RESTRICT;


