-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/goals/columns/created_at/alterations/alt0000002650


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".goals 
  ALTER COLUMN created_at DROP NOT NULL;


