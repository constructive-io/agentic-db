-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/workflow_steps/columns/on_success_step/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".workflow_steps 
  DROP COLUMN on_success_step RESTRICT;


