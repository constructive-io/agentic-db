-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/workflow_steps/columns/step_order/alterations/alt0000001243


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".workflow_steps 
  ALTER COLUMN step_order DROP NOT NULL;


