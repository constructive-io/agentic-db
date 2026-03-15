-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/workflow_steps/columns/id/alterations/alt0000001235


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".workflow_steps 
  ALTER COLUMN id DROP NOT NULL;


