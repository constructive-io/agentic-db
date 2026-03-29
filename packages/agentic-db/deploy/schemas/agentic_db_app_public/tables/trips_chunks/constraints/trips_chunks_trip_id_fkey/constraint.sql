-- Deploy: schemas/agentic_db_app_public/tables/trips_chunks/constraints/trips_chunks_trip_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/trips/table
-- requires: schemas/agentic_db_app_public/tables/trips_chunks/table
-- requires: schemas/agentic_db_app_public/tables/codebases_chunks/indexes/codebases_chunks_chunk_index_idx


ALTER TABLE agentic_db_app_public.trips_chunks 
  ADD CONSTRAINT trips_chunks_trip_id_fkey 
    FOREIGN KEY(trip_id) 
    REFERENCES agentic_db_app_public.trips (id) 
    ON DELETE CASCADE;

