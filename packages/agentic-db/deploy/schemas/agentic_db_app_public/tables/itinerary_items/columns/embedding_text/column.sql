-- Deploy: schemas/agentic_db_app_public/tables/itinerary_items/columns/embedding_text/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/itinerary_items/table
-- requires: schemas/agentic_db_app_public/tables/itinerary_items/columns/sort_order/alterations/alt0000006239


ALTER TABLE agentic_db_app_public.itinerary_items 
  ADD COLUMN embedding_text text;

