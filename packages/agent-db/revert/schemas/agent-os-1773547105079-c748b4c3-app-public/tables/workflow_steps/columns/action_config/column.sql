-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/workflow_steps/columns/action_config/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".workflow_steps 
  DROP COLUMN action_config RESTRICT;


