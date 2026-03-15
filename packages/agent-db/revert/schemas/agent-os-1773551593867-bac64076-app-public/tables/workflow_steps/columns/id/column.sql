-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/workflow_steps/columns/id/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".workflow_steps 
  DROP COLUMN id RESTRICT;


