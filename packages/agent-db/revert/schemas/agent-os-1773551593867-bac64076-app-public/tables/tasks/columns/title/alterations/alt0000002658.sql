-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/tasks/columns/title/alterations/alt0000002658


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".tasks 
  ALTER COLUMN title DROP NOT NULL;


