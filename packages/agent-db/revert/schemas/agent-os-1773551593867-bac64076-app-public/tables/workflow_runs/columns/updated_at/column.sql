-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/workflow_runs/columns/updated_at/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".workflow_runs 
  DROP COLUMN updated_at RESTRICT;


