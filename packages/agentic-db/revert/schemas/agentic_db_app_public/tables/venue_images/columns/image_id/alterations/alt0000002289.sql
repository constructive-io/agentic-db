-- Revert: schemas/agentic_db_app_public/tables/venue_images/columns/image_id/alterations/alt0000002289


ALTER TABLE agentic_db_app_public.venue_images 
  ALTER COLUMN image_id DROP NOT NULL;


