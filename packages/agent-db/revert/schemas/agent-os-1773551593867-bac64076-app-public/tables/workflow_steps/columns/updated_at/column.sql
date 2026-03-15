-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/workflow_steps/columns/updated_at/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".workflow_steps 
  DROP COLUMN updated_at RESTRICT;


