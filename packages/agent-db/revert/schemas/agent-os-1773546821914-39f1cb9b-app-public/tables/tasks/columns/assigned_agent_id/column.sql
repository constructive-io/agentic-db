-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/tasks/columns/assigned_agent_id/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".tasks 
  DROP COLUMN assigned_agent_id RESTRICT;


