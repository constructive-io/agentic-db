-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/reminders/columns/id/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".reminders 
  DROP COLUMN id RESTRICT;


