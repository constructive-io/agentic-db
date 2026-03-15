-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/execution_log/columns/session_id/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".execution_log 
  DROP COLUMN session_id RESTRICT;


