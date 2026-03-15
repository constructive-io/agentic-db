-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/workflow_runs/columns/workflow_id/alterations/alt0000002814


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".workflow_runs 
  ALTER COLUMN workflow_id DROP NOT NULL;


