-- Deploy: schemas/agentic_db_app_public/tables/itinerary_items/columns/trip_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/itinerary_items/table
-- requires: schemas/agentic_db_app_public/tables/itinerary_items/columns/updated_at/alterations/alt0000006236


ALTER TABLE agentic_db_app_public.itinerary_items 
  ADD COLUMN trip_id uuid;

