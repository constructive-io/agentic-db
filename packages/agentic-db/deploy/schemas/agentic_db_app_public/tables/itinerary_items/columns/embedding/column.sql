-- Deploy: schemas/agentic_db_app_public/tables/itinerary_items/columns/embedding/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/itinerary_items/table
-- requires: schemas/agentic_db_app_public/tables/itinerary_items/columns/embedding_text/column


ALTER TABLE agentic_db_app_public.itinerary_items 
  ADD COLUMN embedding vector(768);

