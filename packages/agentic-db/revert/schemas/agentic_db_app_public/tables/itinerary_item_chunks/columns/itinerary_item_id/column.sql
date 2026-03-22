-- Revert: schemas/agentic_db_app_public/tables/itinerary_item_chunks/columns/itinerary_item_id/column


ALTER TABLE agentic_db_app_public.itinerary_item_chunks 
  DROP COLUMN itinerary_item_id RESTRICT;


