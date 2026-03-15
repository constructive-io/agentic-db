-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/reminders/columns/entity_id/alterations/alt0000003047


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".reminders 
  ALTER COLUMN entity_id DROP NOT NULL;


