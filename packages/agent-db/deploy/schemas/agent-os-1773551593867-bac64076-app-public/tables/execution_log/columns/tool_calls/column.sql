-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/execution_log/columns/tool_calls/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/execution_log/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/execution_log/columns/output/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".execution_log 
  ADD COLUMN tool_calls jsonb;

