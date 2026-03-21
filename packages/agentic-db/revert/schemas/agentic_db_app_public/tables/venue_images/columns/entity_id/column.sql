-- Revert: schemas/agentic_db_app_public/tables/venue_images/columns/entity_id/column


ALTER TABLE agentic_db_app_public.venue_images 
  DROP COLUMN entity_id RESTRICT;


