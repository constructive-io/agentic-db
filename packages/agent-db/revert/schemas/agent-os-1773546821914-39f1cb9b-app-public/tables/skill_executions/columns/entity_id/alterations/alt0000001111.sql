-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/skill_executions/columns/entity_id/alterations/alt0000001111


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".skill_executions 
  ALTER COLUMN entity_id DROP NOT NULL;


