-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/tasks/columns/parent_task_id/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".tasks 
  DROP COLUMN parent_task_id RESTRICT;


