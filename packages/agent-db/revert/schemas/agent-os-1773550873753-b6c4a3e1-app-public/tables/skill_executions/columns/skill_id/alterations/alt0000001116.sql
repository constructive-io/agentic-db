-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/skill_executions/columns/skill_id/alterations/alt0000001116


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".skill_executions 
  ALTER COLUMN skill_id DROP NOT NULL;


