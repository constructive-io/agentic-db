-- Deploy: schemas/agentic_db_app_public/tables/itinerary_item_chunks/columns/chunk_index/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/itinerary_item_chunks/table
-- requires: schemas/agentic_db_app_public/tables/itinerary_item_chunks/columns/updated_at/alterations/alt0000006333


ALTER TABLE agentic_db_app_public.itinerary_item_chunks 
  ADD COLUMN chunk_index int;

