-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/workflow_steps/columns/action_config/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".workflow_steps 
  DROP COLUMN action_config RESTRICT;


