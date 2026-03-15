-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/agents/columns/entity_id/alterations/alt0000001131


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".agents 
  ALTER COLUMN entity_id DROP NOT NULL;


