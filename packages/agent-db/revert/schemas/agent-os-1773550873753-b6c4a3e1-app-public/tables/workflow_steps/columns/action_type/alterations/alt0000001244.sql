-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/workflow_steps/columns/action_type/alterations/alt0000001244


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".workflow_steps 
  ALTER COLUMN action_type DROP NOT NULL;


