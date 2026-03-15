-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/workflow_steps/columns/workflow_id/alterations/alt0000001242


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".workflow_steps 
  ALTER COLUMN workflow_id DROP NOT NULL;


