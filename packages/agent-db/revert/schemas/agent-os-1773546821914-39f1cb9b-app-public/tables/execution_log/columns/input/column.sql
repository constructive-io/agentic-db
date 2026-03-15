-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/execution_log/columns/input/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".execution_log 
  DROP COLUMN input RESTRICT;


