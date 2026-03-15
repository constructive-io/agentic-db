-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/skill_executions/columns/session_id/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".skill_executions 
  DROP COLUMN session_id RESTRICT;


