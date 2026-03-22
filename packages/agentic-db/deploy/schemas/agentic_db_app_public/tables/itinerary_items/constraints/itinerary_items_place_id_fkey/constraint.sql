-- Deploy: schemas/agentic_db_app_public/tables/itinerary_items/constraints/itinerary_items_place_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/places/table
-- requires: schemas/agentic_db_app_public/tables/itinerary_items/table
-- requires: schemas/agentic_db_app_public/tables/itinerary_items/indexes/itinerary_items_trip_id_idx


ALTER TABLE agentic_db_app_public.itinerary_items 
  ADD CONSTRAINT itinerary_items_place_id_fkey 
    FOREIGN KEY(place_id) 
    REFERENCES agentic_db_app_public.places (id) 
    ON DELETE SET NULL;

