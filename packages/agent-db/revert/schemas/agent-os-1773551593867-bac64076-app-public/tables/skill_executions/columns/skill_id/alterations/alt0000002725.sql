-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/skill_executions/columns/skill_id/alterations/alt0000002725


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".skill_executions 
  ALTER COLUMN skill_id DROP NOT NULL;


