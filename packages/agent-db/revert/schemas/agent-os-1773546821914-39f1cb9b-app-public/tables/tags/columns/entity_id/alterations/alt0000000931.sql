-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/tags/columns/entity_id/alterations/alt0000000931


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".tags 
  ALTER COLUMN entity_id DROP NOT NULL;


