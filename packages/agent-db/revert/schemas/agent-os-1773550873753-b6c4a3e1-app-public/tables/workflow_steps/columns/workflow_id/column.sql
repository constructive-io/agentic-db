-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/workflow_steps/columns/workflow_id/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".workflow_steps 
  DROP COLUMN workflow_id RESTRICT;


