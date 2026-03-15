-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/execution_log/columns/duration_ms/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/execution_log/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/execution_log/columns/tool_calls/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".execution_log 
  ADD COLUMN duration_ms int;

