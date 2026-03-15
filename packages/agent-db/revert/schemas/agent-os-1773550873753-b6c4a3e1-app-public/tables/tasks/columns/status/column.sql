-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/tasks/columns/status/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".tasks 
  DROP COLUMN status RESTRICT;


