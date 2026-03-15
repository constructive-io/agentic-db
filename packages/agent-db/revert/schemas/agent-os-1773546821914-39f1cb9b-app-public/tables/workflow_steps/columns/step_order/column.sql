-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/workflow_steps/columns/step_order/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".workflow_steps 
  DROP COLUMN step_order RESTRICT;


