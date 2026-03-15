-- Deploy: schemas/agent_db_app_public/tables/execution_log/columns/duration_ms/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/execution_log/table
-- requires: schemas/agent_db_app_public/tables/execution_log/columns/tool_calls/column


ALTER TABLE "agent_db_app_public".execution_log 
  ADD COLUMN duration_ms integer;

