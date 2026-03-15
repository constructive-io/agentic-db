-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/skill_executions/columns/skill_id/alterations/alt0000001116


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".skill_executions 
  ALTER COLUMN skill_id DROP NOT NULL;


