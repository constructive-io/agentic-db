-- Revert: schemas/agentic_db_app_public/tables/tool_executions/columns/completed_at/column


ALTER TABLE agentic_db_app_public.tool_executions 
  DROP COLUMN completed_at RESTRICT;


