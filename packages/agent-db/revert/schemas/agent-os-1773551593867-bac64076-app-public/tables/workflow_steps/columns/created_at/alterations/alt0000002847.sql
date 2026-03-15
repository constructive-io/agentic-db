-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/workflow_steps/columns/created_at/alterations/alt0000002847


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".workflow_steps 
  ALTER COLUMN created_at DROP NOT NULL;


