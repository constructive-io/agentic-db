-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/venue_images/columns/image_id/alterations/alt0000002612


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".venue_images 
  ALTER COLUMN image_id DROP NOT NULL;


