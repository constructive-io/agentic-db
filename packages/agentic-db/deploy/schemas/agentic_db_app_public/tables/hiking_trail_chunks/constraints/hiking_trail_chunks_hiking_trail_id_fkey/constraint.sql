-- Deploy: schemas/agentic_db_app_public/tables/hiking_trail_chunks/constraints/hiking_trail_chunks_hiking_trail_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/hiking_trails/table
-- requires: schemas/agentic_db_app_public/tables/hiking_trail_chunks/table
-- requires: schemas/agentic_db_app_public/tables/itinerary_item_chunks/indexes/itinerary_item_chunks_itinerary_item_id_idx


ALTER TABLE agentic_db_app_public.hiking_trail_chunks 
  ADD CONSTRAINT hiking_trail_chunks_hiking_trail_id_fkey 
    FOREIGN KEY(hiking_trail_id) 
    REFERENCES agentic_db_app_public.hiking_trails (id) 
    ON DELETE CASCADE;

