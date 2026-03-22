-- Deploy: schemas/agentic_db_app_public/tables/itinerary_items/columns/category/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/itinerary_items/table
-- requires: schemas/agentic_db_app_public/tables/itinerary_items/columns/place_id/column


ALTER TABLE agentic_db_app_public.itinerary_items 
  ADD COLUMN category text;

