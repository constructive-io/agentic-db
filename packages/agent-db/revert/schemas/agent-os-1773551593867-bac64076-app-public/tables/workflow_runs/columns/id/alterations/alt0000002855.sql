-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/workflow_runs/columns/id/alterations/alt0000002855


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".workflow_runs 
  ALTER COLUMN id DROP NOT NULL;


