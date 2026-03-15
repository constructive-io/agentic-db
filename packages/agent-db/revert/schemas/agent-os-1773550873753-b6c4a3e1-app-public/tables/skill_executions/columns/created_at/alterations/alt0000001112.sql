-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/skill_executions/columns/created_at/alterations/alt0000001112


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".skill_executions 
  ALTER COLUMN created_at DROP NOT NULL;


