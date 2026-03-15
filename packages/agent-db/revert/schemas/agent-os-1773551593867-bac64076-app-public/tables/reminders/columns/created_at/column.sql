-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/reminders/columns/created_at/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".reminders 
  DROP COLUMN created_at RESTRICT;


