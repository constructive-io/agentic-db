-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/tasks/columns/parent_task_id/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".tasks 
  DROP COLUMN parent_task_id RESTRICT;


