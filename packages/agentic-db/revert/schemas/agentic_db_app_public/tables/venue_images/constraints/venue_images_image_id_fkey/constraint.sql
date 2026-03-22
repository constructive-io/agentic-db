-- Revert: schemas/agentic_db_app_public/tables/venue_images/constraints/venue_images_image_id_fkey/constraint


ALTER TABLE agentic_db_app_public.venue_images 
  DROP CONSTRAINT venue_images_image_id_fkey;


