-- Revert: schemas/agentic_db_app_public/tables/venue_images/columns/image_id/column


ALTER TABLE "agentic_db_app_public".venue_images 
  DROP COLUMN image_id RESTRICT;


