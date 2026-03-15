-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/tasks/columns/completed_at/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".tasks 
  DROP COLUMN completed_at RESTRICT;


