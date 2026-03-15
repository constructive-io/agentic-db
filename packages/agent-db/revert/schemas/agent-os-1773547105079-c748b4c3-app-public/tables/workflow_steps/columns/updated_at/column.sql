-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/workflow_steps/columns/updated_at/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".workflow_steps 
  DROP COLUMN updated_at RESTRICT;


