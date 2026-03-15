-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/workflow_steps/columns/created_at/alterations/alt0000001238


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".workflow_steps 
  ALTER COLUMN created_at DROP NOT NULL;


