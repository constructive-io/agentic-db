-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/skill_executions/columns/entity_id/alterations/alt0000002720


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".skill_executions 
  ALTER COLUMN entity_id DROP NOT NULL;


