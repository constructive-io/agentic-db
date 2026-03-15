-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/execution_log/columns/session_id/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".execution_log 
  DROP COLUMN session_id RESTRICT;


