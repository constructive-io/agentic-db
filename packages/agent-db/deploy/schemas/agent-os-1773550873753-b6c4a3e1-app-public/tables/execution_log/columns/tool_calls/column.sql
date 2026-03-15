-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/execution_log/columns/tool_calls/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/execution_log/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/execution_log/columns/output/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".execution_log 
  ADD COLUMN tool_calls jsonb;

