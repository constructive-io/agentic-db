-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/reminders/columns/related_entity_id/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".reminders 
  DROP COLUMN related_entity_id RESTRICT;


