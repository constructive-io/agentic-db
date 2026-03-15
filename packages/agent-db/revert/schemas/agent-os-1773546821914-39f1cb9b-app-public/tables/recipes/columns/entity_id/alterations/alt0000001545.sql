-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/recipes/columns/entity_id/alterations/alt0000001545


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".recipes 
  ALTER COLUMN entity_id DROP NOT NULL;


