-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/workflow_runs/columns/id/alterations/alt0000002807


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".workflow_runs 
  ALTER COLUMN id DROP NOT NULL;


