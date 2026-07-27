-- Deploy: schemas/agentic_db_app_public/tables/tool_executions/columns/started_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tool_executions/table


ALTER TABLE agentic_db_app_public.tool_executions 
  ADD COLUMN started_at timestamptz;

