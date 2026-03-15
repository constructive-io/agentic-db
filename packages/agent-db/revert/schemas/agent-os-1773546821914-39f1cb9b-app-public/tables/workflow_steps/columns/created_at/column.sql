-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/workflow_steps/columns/created_at/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".workflow_steps 
  DROP COLUMN created_at RESTRICT;


