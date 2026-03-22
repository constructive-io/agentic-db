-- Revert: schemas/agentic_db_app_public/tables/tool_executions/constraints/tool_executions_pkey/constraint


ALTER TABLE agentic_db_app_public.tool_executions 
  DROP CONSTRAINT tool_executions_pkey;


