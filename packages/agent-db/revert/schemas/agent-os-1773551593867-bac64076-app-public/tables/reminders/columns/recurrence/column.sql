-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/reminders/columns/recurrence/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".reminders 
  DROP COLUMN recurrence RESTRICT;


