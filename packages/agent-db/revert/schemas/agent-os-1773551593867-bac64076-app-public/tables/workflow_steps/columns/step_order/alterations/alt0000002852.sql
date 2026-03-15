-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/workflow_steps/columns/step_order/alterations/alt0000002852


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".workflow_steps 
  ALTER COLUMN step_order DROP NOT NULL;


