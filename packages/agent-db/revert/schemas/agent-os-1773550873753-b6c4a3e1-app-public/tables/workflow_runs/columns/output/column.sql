-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/workflow_runs/columns/output/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".workflow_runs 
  DROP COLUMN output RESTRICT;


