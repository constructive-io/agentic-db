-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/tasks/columns/updated_at/alterations/alt0000002656


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".tasks 
  ALTER COLUMN updated_at DROP NOT NULL;


