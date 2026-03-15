-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/workflow_steps/constraints/workflow_steps_workflow_id_fkey/constraint


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".workflow_steps 
  DROP CONSTRAINT workflow_steps_workflow_id_fkey;


