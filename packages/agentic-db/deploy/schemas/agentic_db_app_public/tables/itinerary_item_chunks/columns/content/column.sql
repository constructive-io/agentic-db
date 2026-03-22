-- Deploy: schemas/agentic_db_app_public/tables/itinerary_item_chunks/columns/content/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/itinerary_item_chunks/table
-- requires: schemas/agentic_db_app_public/tables/itinerary_item_chunks/columns/chunk_index/alterations/alt0000001724


ALTER TABLE "agentic_db_app_public".itinerary_item_chunks 
  ADD COLUMN content text;

