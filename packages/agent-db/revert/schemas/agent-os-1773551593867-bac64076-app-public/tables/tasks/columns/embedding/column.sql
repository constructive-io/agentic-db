-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/tasks/columns/embedding/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".tasks 
  DROP COLUMN embedding RESTRICT;


