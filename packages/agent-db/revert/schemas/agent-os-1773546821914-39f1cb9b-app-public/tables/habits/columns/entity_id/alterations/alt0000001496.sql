-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/habits/columns/entity_id/alterations/alt0000001496


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".habits 
  ALTER COLUMN entity_id DROP NOT NULL;


