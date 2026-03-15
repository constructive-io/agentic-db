-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/tasks/columns/title/alterations/alt0000001049


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".tasks 
  ALTER COLUMN title DROP NOT NULL;


