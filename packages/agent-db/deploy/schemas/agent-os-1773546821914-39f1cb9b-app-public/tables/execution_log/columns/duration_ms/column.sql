-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/execution_log/columns/duration_ms/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/execution_log/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/execution_log/columns/tool_calls/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".execution_log 
  ADD COLUMN duration_ms int;

