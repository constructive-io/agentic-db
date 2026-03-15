-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/tasks/columns/updated_at/alterations/alt0000001047


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".tasks 
  ALTER COLUMN updated_at DROP NOT NULL;


