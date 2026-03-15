-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/tasks/columns/task_type/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".tasks 
  DROP COLUMN task_type RESTRICT;


