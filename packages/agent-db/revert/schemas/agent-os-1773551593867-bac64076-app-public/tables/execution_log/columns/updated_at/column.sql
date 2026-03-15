-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/execution_log/columns/updated_at/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".execution_log 
  DROP COLUMN updated_at RESTRICT;


