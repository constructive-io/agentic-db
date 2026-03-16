-- Revert: schemas/agent_db_app_public/tables/venue_images/constraints/venue_images_venue_id_fkey/constraint


ALTER TABLE "agent_db_app_public".venue_images 
  DROP CONSTRAINT venue_images_venue_id_fkey;


