-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/tasks/columns/title/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".tasks 
  DROP COLUMN title RESTRICT;


