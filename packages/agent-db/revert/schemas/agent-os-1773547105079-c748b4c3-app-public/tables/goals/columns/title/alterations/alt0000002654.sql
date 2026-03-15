-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/goals/columns/title/alterations/alt0000002654


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".goals 
  ALTER COLUMN title DROP NOT NULL;


