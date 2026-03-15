-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/skill_executions/columns/id/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".skill_executions 
  DROP COLUMN id RESTRICT;


