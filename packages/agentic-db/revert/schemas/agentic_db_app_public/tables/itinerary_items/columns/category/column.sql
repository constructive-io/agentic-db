-- Revert: schemas/agentic_db_app_public/tables/itinerary_items/columns/category/column


ALTER TABLE agentic_db_app_public.itinerary_items 
  DROP COLUMN category RESTRICT;


