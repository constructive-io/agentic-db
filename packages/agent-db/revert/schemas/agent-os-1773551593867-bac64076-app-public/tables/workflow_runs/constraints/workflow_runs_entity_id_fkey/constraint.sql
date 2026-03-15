-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/workflow_runs/constraints/workflow_runs_entity_id_fkey/constraint


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".workflow_runs 
  DROP CONSTRAINT workflow_runs_entity_id_fkey;


