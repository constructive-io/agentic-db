-- Deploy: schemas/agentic_db_app_public/tables/itinerary_items/constraints/itinerary_items_trip_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/trips/table
-- requires: schemas/agentic_db_app_public/tables/itinerary_items/table
-- requires: schemas/agentic_db_app_public/tables/habit_chunks/triggers/habit_chunks_enqueue_embedding_update_tg


ALTER TABLE "agentic_db_app_public".itinerary_items 
  ADD CONSTRAINT itinerary_items_trip_id_fkey 
    FOREIGN KEY(trip_id) 
    REFERENCES "agentic_db_app_public".trips (id) 
    ON DELETE CASCADE;

