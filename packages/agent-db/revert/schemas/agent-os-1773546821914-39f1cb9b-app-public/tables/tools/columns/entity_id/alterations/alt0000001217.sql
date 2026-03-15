-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/tools/columns/entity_id/alterations/alt0000001217


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".tools 
  ALTER COLUMN entity_id DROP NOT NULL;


