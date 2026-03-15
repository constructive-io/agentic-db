-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/workflow_steps/columns/timeout_ms/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".workflow_steps 
  DROP COLUMN timeout_ms RESTRICT;


