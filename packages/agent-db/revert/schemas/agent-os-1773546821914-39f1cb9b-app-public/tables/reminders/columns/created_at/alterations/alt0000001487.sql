-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/reminders/columns/created_at/alterations/alt0000001487


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".reminders 
  ALTER COLUMN created_at DROP NOT NULL;


