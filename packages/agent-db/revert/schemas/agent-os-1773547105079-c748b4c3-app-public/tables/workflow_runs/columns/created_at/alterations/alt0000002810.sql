-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/workflow_runs/columns/created_at/alterations/alt0000002810


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".workflow_runs 
  ALTER COLUMN created_at DROP NOT NULL;


