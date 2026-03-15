-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/reminders/columns/title/alterations/alt0000001491


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".reminders 
  ALTER COLUMN title DROP NOT NULL;


