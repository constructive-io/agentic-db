-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/workflow_steps/columns/entity_id/alterations/alt0000001237


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".workflow_steps 
  ALTER COLUMN entity_id DROP NOT NULL;


