-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/workflow_runs/constraints/workflow_runs_entity_id_fkey/constraint


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".workflow_runs 
  DROP CONSTRAINT workflow_runs_entity_id_fkey;


