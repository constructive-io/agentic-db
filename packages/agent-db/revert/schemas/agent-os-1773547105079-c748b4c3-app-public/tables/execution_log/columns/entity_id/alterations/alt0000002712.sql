-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/execution_log/columns/entity_id/alterations/alt0000002712


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".execution_log 
  ALTER COLUMN entity_id DROP NOT NULL;


