-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/workflow_steps/columns/timeout_ms/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".workflow_steps 
  DROP COLUMN timeout_ms RESTRICT;


