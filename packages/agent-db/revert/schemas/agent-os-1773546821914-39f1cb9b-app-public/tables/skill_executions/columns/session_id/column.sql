-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/skill_executions/columns/session_id/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".skill_executions 
  DROP COLUMN session_id RESTRICT;


