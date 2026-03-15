-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/tasks/columns/parent_task_id/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".tasks 
  DROP COLUMN parent_task_id RESTRICT;


