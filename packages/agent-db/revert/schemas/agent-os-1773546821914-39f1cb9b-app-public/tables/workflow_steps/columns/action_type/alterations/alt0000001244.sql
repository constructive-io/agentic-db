-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/workflow_steps/columns/action_type/alterations/alt0000001244


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".workflow_steps 
  ALTER COLUMN action_type DROP NOT NULL;


