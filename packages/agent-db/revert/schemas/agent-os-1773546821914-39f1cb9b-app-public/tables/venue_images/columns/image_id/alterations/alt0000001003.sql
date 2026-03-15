-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/venue_images/columns/image_id/alterations/alt0000001003


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".venue_images 
  ALTER COLUMN image_id DROP NOT NULL;


