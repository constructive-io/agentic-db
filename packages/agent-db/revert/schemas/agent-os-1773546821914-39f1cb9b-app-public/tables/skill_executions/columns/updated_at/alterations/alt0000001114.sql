-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/skill_executions/columns/updated_at/alterations/alt0000001114


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".skill_executions 
  ALTER COLUMN updated_at DROP NOT NULL;


