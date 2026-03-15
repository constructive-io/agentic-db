-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/workflow_steps/columns/workflow_id/alterations/alt0000002851


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".workflow_steps 
  ALTER COLUMN workflow_id DROP NOT NULL;


