-- Deploy: schemas/agentic_db_app_public/tables/itinerary_items/columns/name/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/itinerary_items/table
-- requires: schemas/agentic_db_app_public/tables/itinerary_items/columns/trip_id/alterations/alt0000006237


ALTER TABLE agentic_db_app_public.itinerary_items 
  ADD COLUMN name text;

