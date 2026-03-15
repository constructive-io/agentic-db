-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/workflow_steps/constraints/workflow_steps_workflow_id_fkey/constraint


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".workflow_steps 
  DROP CONSTRAINT workflow_steps_workflow_id_fkey;


