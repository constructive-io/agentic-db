-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/workflow_steps/columns/action_type/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".workflow_steps 
  DROP COLUMN action_type RESTRICT;


