-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/execution_log/columns/session_id/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".execution_log 
  DROP COLUMN session_id RESTRICT;


