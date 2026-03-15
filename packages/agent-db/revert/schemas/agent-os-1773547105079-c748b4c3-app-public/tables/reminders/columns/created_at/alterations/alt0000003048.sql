-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/reminders/columns/created_at/alterations/alt0000003048


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".reminders 
  ALTER COLUMN created_at DROP NOT NULL;


