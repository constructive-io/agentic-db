-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/tasks/columns/parent_task_id/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".tasks 
  DROP COLUMN parent_task_id RESTRICT;


