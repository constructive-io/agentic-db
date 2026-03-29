-- Deploy: schemas/agentic_db_app_public/tables/trips_chunks/constraints/trips_chunks_trips_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/trips/table
-- requires: schemas/agentic_db_app_public/tables/trips_chunks/table
-- requires: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_language_idx


ALTER TABLE agentic_db_app_public.trips_chunks 
  ADD CONSTRAINT trips_chunks_trips_id_fkey 
    FOREIGN KEY(trips_id) 
    REFERENCES agentic_db_app_public.trips (id) 
    ON DELETE CASCADE;

