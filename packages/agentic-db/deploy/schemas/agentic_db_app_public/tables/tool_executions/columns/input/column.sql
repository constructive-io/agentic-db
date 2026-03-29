-- Deploy: schemas/agentic_db_app_public/tables/tool_executions/columns/input/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tool_executions/table
-- requires: schemas/agentic_db_app_public/tables/expenses/indexes/expenses_tags_gin_idx


ALTER TABLE agentic_db_app_public.tool_executions 
  ADD COLUMN input jsonb;

