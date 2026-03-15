-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/workflow_runs/columns/entity_id/alterations/alt0000001248


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".workflow_runs 
  ALTER COLUMN entity_id DROP NOT NULL;


