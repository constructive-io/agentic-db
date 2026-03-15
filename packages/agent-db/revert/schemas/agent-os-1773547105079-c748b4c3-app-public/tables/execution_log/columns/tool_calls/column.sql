-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/execution_log/columns/tool_calls/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".execution_log 
  DROP COLUMN tool_calls RESTRICT;


