-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/tasks/columns/title/alterations/alt0000002610


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".tasks 
  ALTER COLUMN title DROP NOT NULL;


