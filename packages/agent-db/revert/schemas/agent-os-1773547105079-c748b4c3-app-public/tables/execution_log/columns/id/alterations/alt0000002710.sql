-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/execution_log/columns/id/alterations/alt0000002710


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".execution_log 
  ALTER COLUMN id DROP NOT NULL;


