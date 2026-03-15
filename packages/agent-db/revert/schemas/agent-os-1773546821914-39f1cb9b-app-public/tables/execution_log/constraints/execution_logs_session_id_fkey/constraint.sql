-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/execution_log/constraints/execution_logs_session_id_fkey/constraint


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".execution_log 
  DROP CONSTRAINT execution_logs_session_id_fkey;


