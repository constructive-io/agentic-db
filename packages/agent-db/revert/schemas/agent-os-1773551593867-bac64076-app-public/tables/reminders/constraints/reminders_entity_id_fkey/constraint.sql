-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/reminders/constraints/reminders_entity_id_fkey/constraint


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".reminders 
  DROP CONSTRAINT reminders_entity_id_fkey;


