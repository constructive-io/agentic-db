-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/memories/columns/entity_id/alterations/alt0000001065


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".memories 
  ALTER COLUMN entity_id DROP NOT NULL;


