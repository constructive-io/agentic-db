-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/tasks/columns/updated_at/alterations/alt0000002608


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".tasks 
  ALTER COLUMN updated_at DROP NOT NULL;


