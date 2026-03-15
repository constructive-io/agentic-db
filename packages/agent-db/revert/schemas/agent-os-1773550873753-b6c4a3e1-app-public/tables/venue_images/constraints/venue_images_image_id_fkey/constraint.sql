-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/venue_images/constraints/venue_images_image_id_fkey/constraint


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".venue_images 
  DROP CONSTRAINT venue_images_image_id_fkey;


