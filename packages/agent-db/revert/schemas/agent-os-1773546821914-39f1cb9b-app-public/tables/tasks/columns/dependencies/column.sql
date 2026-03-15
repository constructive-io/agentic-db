-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/tasks/columns/dependencies/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".tasks 
  DROP COLUMN dependencies RESTRICT;


