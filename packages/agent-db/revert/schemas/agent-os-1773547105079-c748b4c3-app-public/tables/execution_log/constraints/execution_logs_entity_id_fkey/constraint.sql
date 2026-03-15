-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/execution_log/constraints/execution_logs_entity_id_fkey/constraint


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".execution_log 
  DROP CONSTRAINT execution_logs_entity_id_fkey;


