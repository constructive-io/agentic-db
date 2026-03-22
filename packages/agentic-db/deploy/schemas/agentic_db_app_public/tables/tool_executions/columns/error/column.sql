-- Deploy: schemas/agentic_db_app_public/tables/tool_executions/columns/error/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tool_executions/table
-- requires: schemas/agentic_db_app_public/tables/tool_executions/columns/completed_at/column


ALTER TABLE "agentic_db_app_public".tool_executions 
  ADD COLUMN error text;

