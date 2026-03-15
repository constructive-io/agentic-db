-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/tasks/columns/title/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".tasks 
  DROP COLUMN title RESTRICT;


