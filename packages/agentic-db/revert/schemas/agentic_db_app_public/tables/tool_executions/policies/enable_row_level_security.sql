-- Revert: schemas/agentic_db_app_public/tables/tool_executions/policies/enable_row_level_security


ALTER TABLE agentic_db_app_public.tool_executions 
  DISABLE ROW LEVEL SECURITY;


