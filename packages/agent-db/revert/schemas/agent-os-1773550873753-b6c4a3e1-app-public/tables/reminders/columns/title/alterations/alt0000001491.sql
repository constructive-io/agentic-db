-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/reminders/columns/title/alterations/alt0000001491


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".reminders 
  ALTER COLUMN title DROP NOT NULL;


