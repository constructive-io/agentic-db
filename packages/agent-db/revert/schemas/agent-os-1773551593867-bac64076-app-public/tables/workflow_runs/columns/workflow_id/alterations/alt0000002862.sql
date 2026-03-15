-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/workflow_runs/columns/workflow_id/alterations/alt0000002862


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".workflow_runs 
  ALTER COLUMN workflow_id DROP NOT NULL;


