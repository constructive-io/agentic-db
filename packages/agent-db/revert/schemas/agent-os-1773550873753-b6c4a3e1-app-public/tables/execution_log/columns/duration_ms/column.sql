-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/execution_log/columns/duration_ms/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".execution_log 
  DROP COLUMN duration_ms RESTRICT;


