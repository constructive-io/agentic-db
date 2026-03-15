-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/workflow_runs/columns/completed_at/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".workflow_runs 
  DROP COLUMN completed_at RESTRICT;


