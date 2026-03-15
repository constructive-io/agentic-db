-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/reminders/constraints/reminders_entity_id_fkey/constraint


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".reminders 
  DROP CONSTRAINT reminders_entity_id_fkey;


