-- Deploy: schemas/agent_db_app_public/tables/execution_log/columns/tool_calls/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/execution_log/table
-- requires: schemas/agent_db_app_public/tables/execution_log/columns/output/column


ALTER TABLE "agent_db_app_public".execution_log 
  ADD COLUMN tool_calls jsonb;

