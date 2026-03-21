-- Deploy: schemas/agentic_db_app_public/tables/execution_log/columns/tool_calls/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/execution_log/table
-- requires: schemas/agentic_db_app_public/tables/execution_log/columns/output/column


ALTER TABLE "agentic_db_app_public".execution_log 
  ADD COLUMN tool_calls jsonb;

