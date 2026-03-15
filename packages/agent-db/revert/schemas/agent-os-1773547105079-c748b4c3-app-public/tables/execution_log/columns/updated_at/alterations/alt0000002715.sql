-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/execution_log/columns/updated_at/alterations/alt0000002715


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".execution_log 
  ALTER COLUMN updated_at DROP NOT NULL;


