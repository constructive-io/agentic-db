-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/tasks/columns/created_at/alterations/alt0000002606


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".tasks 
  ALTER COLUMN created_at DROP NOT NULL;


