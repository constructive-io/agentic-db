-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/skill_executions/columns/input/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".skill_executions 
  DROP COLUMN input RESTRICT;


