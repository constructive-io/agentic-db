-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/skill_executions/columns/updated_at/alterations/alt0000001114


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".skill_executions 
  ALTER COLUMN updated_at DROP NOT NULL;


