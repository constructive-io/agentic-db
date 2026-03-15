-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/reminders/columns/title/alterations/alt0000003052


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".reminders 
  ALTER COLUMN title DROP NOT NULL;


