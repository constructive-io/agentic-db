-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/workflow_steps/columns/workflow_id/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".workflow_steps 
  DROP COLUMN workflow_id RESTRICT;


