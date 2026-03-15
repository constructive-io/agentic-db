-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/venue_images/columns/entity_id/alterations/alt0000001006


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".venue_images 
  ALTER COLUMN entity_id DROP NOT NULL;


