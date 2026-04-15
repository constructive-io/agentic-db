-- Revert: schemas/agentic_db_app_public/tables/venue_images/columns/venue_id/alterations/alt0000015380


ALTER TABLE agentic_db_app_public.venue_images 
  ALTER COLUMN venue_id DROP NOT NULL;


