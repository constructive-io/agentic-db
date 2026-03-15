-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/tasks/constraints/tasks_parent_task_id_fkey/constraint


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".tasks 
  DROP CONSTRAINT tasks_parent_task_id_fkey;


