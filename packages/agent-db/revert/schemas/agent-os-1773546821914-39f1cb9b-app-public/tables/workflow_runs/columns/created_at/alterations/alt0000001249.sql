-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/workflow_runs/columns/created_at/alterations/alt0000001249


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".workflow_runs 
  ALTER COLUMN created_at DROP NOT NULL;


