-- Deploy: schemas/agentic_db_app_public/tables/places_chunks/constraints/places_chunks_place_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/places/table
-- requires: schemas/agentic_db_app_public/tables/places_chunks/table
-- requires: schemas/agentic_db_app_public/tables/codebases_chunks/indexes/codebases_chunks_chunk_index_idx


ALTER TABLE agentic_db_app_public.places_chunks 
  ADD CONSTRAINT places_chunks_place_id_fkey 
    FOREIGN KEY(place_id) 
    REFERENCES agentic_db_app_public.places (id) 
    ON DELETE CASCADE;

