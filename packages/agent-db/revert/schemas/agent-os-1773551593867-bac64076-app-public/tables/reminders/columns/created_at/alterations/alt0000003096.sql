-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/reminders/columns/created_at/alterations/alt0000003096


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".reminders 
  ALTER COLUMN created_at DROP NOT NULL;


