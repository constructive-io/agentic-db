-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/workflow_steps/columns/updated_at/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".workflow_steps 
  DROP COLUMN updated_at RESTRICT;


