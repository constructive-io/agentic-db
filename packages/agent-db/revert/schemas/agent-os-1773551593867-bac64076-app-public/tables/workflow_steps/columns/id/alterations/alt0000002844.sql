-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/workflow_steps/columns/id/alterations/alt0000002844


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".workflow_steps 
  ALTER COLUMN id DROP NOT NULL;


