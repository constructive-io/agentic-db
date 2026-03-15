-- Revert: schemas/agent_db_app_public/tables/venue_images/columns/image_id/alterations/alt0000004173


ALTER TABLE "agent_db_app_public".venue_images 
  ALTER COLUMN image_id DROP NOT NULL;


