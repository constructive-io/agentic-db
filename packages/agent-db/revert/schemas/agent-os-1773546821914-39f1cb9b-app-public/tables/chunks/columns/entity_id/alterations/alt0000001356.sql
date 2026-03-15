-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/chunks/columns/entity_id/alterations/alt0000001356


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".chunks 
  ALTER COLUMN entity_id DROP NOT NULL;


