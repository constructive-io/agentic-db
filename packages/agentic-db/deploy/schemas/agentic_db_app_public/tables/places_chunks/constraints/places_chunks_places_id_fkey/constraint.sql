-- Deploy: schemas/agentic_db_app_public/tables/places_chunks/constraints/places_chunks_places_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/places/table
-- requires: schemas/agentic_db_app_public/tables/places_chunks/table
-- requires: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_language_idx


ALTER TABLE "agentic_db_app_public".places_chunks 
  ADD CONSTRAINT places_chunks_places_id_fkey 
    FOREIGN KEY(places_id) 
    REFERENCES "agentic_db_app_public".places (id) 
    ON DELETE CASCADE;

