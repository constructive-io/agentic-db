-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/execution_log/columns/input/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".execution_log 
  DROP COLUMN input RESTRICT;


