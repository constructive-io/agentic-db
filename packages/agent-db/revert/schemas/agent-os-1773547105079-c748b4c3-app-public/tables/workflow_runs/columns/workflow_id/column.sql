-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/workflow_runs/columns/workflow_id/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".workflow_runs 
  DROP COLUMN workflow_id RESTRICT;


