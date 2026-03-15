-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/reminders/constraints/reminders_entity_id_fkey/constraint


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".reminders 
  DROP CONSTRAINT reminders_entity_id_fkey;


