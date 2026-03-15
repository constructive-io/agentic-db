-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/workflow_runs/columns/entity_id/alterations/alt0000002857


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".workflow_runs 
  ALTER COLUMN entity_id DROP NOT NULL;


