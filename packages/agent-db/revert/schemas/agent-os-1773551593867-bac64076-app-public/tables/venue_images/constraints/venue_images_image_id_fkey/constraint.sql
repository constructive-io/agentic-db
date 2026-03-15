-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/venue_images/constraints/venue_images_image_id_fkey/constraint


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".venue_images 
  DROP CONSTRAINT venue_images_image_id_fkey;


