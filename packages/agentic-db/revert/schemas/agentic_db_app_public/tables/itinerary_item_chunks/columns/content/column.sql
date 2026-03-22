-- Revert: schemas/agentic_db_app_public/tables/itinerary_item_chunks/columns/content/column


ALTER TABLE agentic_db_app_public.itinerary_item_chunks 
  DROP COLUMN content RESTRICT;


