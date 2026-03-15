-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/workflow_runs/constraints/workflow_runs_entity_id_fkey/constraint


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".workflow_runs 
  DROP CONSTRAINT workflow_runs_entity_id_fkey;


