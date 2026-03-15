-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/workflow_steps/constraints/workflow_steps_workflow_id_fkey/constraint


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".workflow_steps 
  DROP CONSTRAINT workflow_steps_workflow_id_fkey;


