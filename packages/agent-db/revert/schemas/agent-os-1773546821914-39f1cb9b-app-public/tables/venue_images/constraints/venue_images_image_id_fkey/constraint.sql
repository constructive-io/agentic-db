-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/venue_images/constraints/venue_images_image_id_fkey/constraint


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".venue_images 
  DROP CONSTRAINT venue_images_image_id_fkey;


