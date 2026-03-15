-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/workflow_runs/columns/workflow_id/alterations/alt0000001253


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".workflow_runs 
  ALTER COLUMN workflow_id DROP NOT NULL;


