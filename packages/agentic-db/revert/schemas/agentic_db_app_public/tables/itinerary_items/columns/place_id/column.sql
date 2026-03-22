-- Revert: schemas/agentic_db_app_public/tables/itinerary_items/columns/place_id/column


ALTER TABLE agentic_db_app_public.itinerary_items 
  DROP COLUMN place_id RESTRICT;


