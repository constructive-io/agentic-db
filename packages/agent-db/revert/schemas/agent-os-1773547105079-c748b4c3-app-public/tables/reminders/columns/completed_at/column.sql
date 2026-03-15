-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/reminders/columns/completed_at/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".reminders 
  DROP COLUMN completed_at RESTRICT;


