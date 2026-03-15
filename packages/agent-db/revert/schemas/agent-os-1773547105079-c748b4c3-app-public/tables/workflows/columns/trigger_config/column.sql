-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/workflows/columns/trigger_config/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".workflows 
  DROP COLUMN trigger_config RESTRICT;


