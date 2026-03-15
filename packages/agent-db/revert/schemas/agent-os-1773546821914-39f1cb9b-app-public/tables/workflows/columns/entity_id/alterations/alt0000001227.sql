-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/workflows/columns/entity_id/alterations/alt0000001227


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".workflows 
  ALTER COLUMN entity_id DROP NOT NULL;


