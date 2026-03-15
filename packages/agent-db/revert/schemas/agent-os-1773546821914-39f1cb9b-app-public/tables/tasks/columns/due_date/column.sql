-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/tasks/columns/due_date/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".tasks 
  DROP COLUMN due_date RESTRICT;


