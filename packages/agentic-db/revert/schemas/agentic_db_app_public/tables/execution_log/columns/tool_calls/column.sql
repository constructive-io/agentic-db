-- Revert: schemas/agentic_db_app_public/tables/execution_log/columns/tool_calls/column


ALTER TABLE agentic_db_app_public.execution_log 
  DROP COLUMN tool_calls RESTRICT;


