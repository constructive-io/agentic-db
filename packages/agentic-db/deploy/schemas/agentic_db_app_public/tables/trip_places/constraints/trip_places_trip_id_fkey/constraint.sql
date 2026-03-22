-- Deploy: schemas/agentic_db_app_public/tables/trip_places/constraints/trip_places_trip_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/trips/table
-- requires: schemas/agentic_db_app_public/tables/trip_places/table
-- requires: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_language_idx


ALTER TABLE agentic_db_app_public.trip_places 
  ADD CONSTRAINT trip_places_trip_id_fkey 
    FOREIGN KEY(trip_id) 
    REFERENCES agentic_db_app_public.trips (id) 
    ON DELETE CASCADE;

