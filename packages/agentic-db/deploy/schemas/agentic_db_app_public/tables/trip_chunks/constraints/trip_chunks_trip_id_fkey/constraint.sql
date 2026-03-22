-- Deploy: schemas/agentic_db_app_public/tables/trip_chunks/constraints/trip_chunks_trip_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/trips/table
-- requires: schemas/agentic_db_app_public/tables/trip_chunks/table
-- requires: schemas/agentic_db_app_public/tables/itinerary_items/indexes/itinerary_items_place_id_idx


ALTER TABLE "agentic_db_app_public".trip_chunks 
  ADD CONSTRAINT trip_chunks_trip_id_fkey 
    FOREIGN KEY(trip_id) 
    REFERENCES "agentic_db_app_public".trips (id) 
    ON DELETE CASCADE;

