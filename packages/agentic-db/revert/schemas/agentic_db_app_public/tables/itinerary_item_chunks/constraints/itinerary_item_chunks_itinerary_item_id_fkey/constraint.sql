-- Revert: schemas/agentic_db_app_public/tables/itinerary_item_chunks/constraints/itinerary_item_chunks_itinerary_item_id_fkey/constraint


ALTER TABLE agentic_db_app_public.itinerary_item_chunks 
  DROP CONSTRAINT itinerary_item_chunks_itinerary_item_id_fkey;


