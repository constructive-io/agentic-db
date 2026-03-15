-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/reminders/columns/title/alterations/alt0000003100


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".reminders 
  ALTER COLUMN title DROP NOT NULL;


