-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/tasks/columns/title/alterations/alt0000001049


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".tasks 
  ALTER COLUMN title DROP NOT NULL;


