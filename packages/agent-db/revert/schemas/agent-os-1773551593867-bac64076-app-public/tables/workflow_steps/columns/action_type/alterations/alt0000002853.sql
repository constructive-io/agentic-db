-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/workflow_steps/columns/action_type/alterations/alt0000002853


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".workflow_steps 
  ALTER COLUMN action_type DROP NOT NULL;


