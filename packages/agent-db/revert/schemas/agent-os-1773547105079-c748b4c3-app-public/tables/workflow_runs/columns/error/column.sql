-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/workflow_runs/columns/error/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".workflow_runs 
  DROP COLUMN error RESTRICT;


