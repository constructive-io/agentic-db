-- Revert: schemas/agentic_db_app_public/tables/venue_images/columns/entity_id/alterations/alt0000003287


ALTER TABLE agentic_db_app_public.venue_images 
  ALTER COLUMN entity_id DROP NOT NULL;


