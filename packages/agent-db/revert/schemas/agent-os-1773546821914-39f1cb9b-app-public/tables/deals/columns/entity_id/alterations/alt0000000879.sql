-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/deals/columns/entity_id/alterations/alt0000000879


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".deals 
  ALTER COLUMN entity_id DROP NOT NULL;


