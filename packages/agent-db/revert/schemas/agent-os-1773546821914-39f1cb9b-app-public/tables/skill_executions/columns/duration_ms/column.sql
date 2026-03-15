-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/skill_executions/columns/duration_ms/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".skill_executions 
  DROP COLUMN duration_ms RESTRICT;


