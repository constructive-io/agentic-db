-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/workflow_steps/columns/id/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".workflow_steps 
  DROP COLUMN id RESTRICT;


