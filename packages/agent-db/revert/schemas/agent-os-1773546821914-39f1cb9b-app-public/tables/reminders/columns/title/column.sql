-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/reminders/columns/title/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".reminders 
  DROP COLUMN title RESTRICT;


