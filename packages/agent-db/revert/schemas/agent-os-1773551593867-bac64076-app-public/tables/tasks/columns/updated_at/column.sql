-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/tasks/columns/updated_at/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".tasks 
  DROP COLUMN updated_at RESTRICT;


