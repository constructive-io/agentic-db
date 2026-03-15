-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/workflow_runs/columns/entity_id/alterations/alt0000002809


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".workflow_runs 
  ALTER COLUMN entity_id DROP NOT NULL;


