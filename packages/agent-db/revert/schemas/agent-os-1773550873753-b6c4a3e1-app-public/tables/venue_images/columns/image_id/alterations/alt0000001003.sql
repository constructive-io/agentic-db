-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/venue_images/columns/image_id/alterations/alt0000001003


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".venue_images 
  ALTER COLUMN image_id DROP NOT NULL;


